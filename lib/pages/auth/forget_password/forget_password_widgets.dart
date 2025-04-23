part of 'imports.dart';

class _Texts extends StatelessWidget {
  const _Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Forgot Your Password?",
            style: context.display,
          ),
          Text(
            "No worries, you just need to type your email address or username and we will send the verification code.",
            style: context.body,
          ),
        ],
      ),
    );
  }
}

class _Input extends GetView<ForgetPasswordController> {
  const _Input({super.key});

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      controller: controller.emailController,
      focus: FocusNode(),
      hint: "Email",
    );
  }
}

class _Button extends GetView<ForgetPasswordController> {
  const _Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading.value == true
          ? CircularProgressIndicator()
          : CupertinoButton(
              color: context.textPrimary,
              onPressed: controller.sendOtp,
              child: Center(
                child: Text(
                  "Reset Password",
                  style: context.name.copyWith(
                    color: context.backgroundColor,
                  ),
                ),
              ),
            );
    });
  }
}






