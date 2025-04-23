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
    return const Placeholder();
  }
}

