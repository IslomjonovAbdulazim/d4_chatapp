part of 'imports.dart';

class _WelcomeTexts extends StatelessWidget {
  const _WelcomeTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Get Started",
            style: context.display,
          ),
          Text(
            "by creating an account.",
            style: context.body,
          ),
        ],
      ),
    );
  }
}

class _Inputs extends GetView<RegisterController> {
  const _Inputs();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWidget(
          controller: controller.fullnameController,
          focus: FocusNode(),
          hint: "Fullname",
        ),
        SizedBox(height: 10),
        InputWidget(
          controller: controller.emailController,
          focus: FocusNode(),
          hint: "Email",
        ),
        SizedBox(height: 10),
        InputWidget(
          controller: controller.passwordController,
          focus: FocusNode(),
          hint: "Password",
        ),
      ],
    );
  }
}

class _RegisterButton extends GetView<RegisterController> {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading.value == false
          ? CupertinoButton(
              color: context.textPrimary,
              disabledColor: context.textPrimary,
              onPressed: controller.register,
              child: Center(
                child: Text(
                  "Register",
                  style: context.name.copyWith(
                    color: context.backgroundColor,
                  ),
                ),
              ),
            )
          : CircularProgressIndicator();
    });
  }
}

class _GoLogin extends StatelessWidget {
  const _GoLogin();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already a member?",
          style: context.body,
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          onPressed: () {
            Get.to(LoginPage());
          },
          child: Text(
            "Login",
            style: context.name,
          ),
        ),
      ],
    );
  }
}
