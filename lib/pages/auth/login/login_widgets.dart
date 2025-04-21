part of 'imports.dart';

class _WelcomeTexts extends StatelessWidget {
  const _WelcomeTexts({super.key});

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
  const _Inputs({super.key});

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
