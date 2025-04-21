part of 'imports.dart';

class _WelcomeTexts extends StatelessWidget {
  const _WelcomeTexts();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Welcome Back!",
            style: context.display,
          ),
          Text(
            "sign in to access your account",
            style: context.body,
          ),
        ],
      ),
    );
  }
}

class _Inputs extends GetView<LoginController> {
  const _Inputs();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

class _ForgetPassword extends StatelessWidget {
  const _ForgetPassword();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Get.to(ForgetPasswordPage());
          },
          child: Text(
            "Forget password?",
            style: context.name,
          ),
        ),
      ],
    );
  }
}

class _Login extends GetView<LoginController> {
  const _Login();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading.value == false
          ? CupertinoButton(
              color: context.textPrimary,
              disabledColor: context.textPrimary,
              onPressed: controller.login,
              child: Center(
                child: Text(
                  "Login",
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

class _GoRegister extends StatelessWidget {
  const _GoRegister();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "New member?",
          style: context.body,
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          onPressed: () {
            Get.to(RegisterPage());
          },
          child: Text(
            "Register Now",
            style: context.name,
          ),
        ),
      ],
    );
  }
}
