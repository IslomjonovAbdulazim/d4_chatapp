part of 'imports.dart';

class _Otp extends GetView<ConfirmEmailController> {
  const _Otp();

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      onSubmit: controller.onSubmitted,
      borderColor: context.cardColor,
      keyboardType: TextInputType.number,
      textStyle: context.title,
      showFieldAsBox: true,
      focusedBorderColor: context.textPrimary,
      enabledBorderColor: context.dividerColor,
      borderRadius: BorderRadius.circular(12),
      showCursor: false,
    );
  }
}

class _Texts extends StatelessWidget {
  const _Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Enter Verification Code",
            style: context.display,
          ),
          Text(
            "Enter code that we have sent to your email",
            style: context.body,
          ),
        ],
      ),
    );
  }
}

class _SendAgain extends GetView<ConfirmEmailController> {
  const _SendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            "Didn’t receive any code?",
            style: context.body,
          ),
          SizedBox(height: 10),
          Obx(() {
            return controller.isLoading.value == false
                ? CupertinoButton(
              color: context.textPrimary,
              disabledColor: context.textPrimary,
              onPressed: controller.resend,
              child: Center(
                child: Text(
                  "Resend Again",
                  style: context.name.copyWith(
                    color: context.backgroundColor,
                  ),
                ),
              ),
            )
                : CircularProgressIndicator();
          }),
        ],
      ),
    );
  }
}
