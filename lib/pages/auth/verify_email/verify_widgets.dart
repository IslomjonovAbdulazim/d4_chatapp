part of 'imports.dart';

class _Otp extends GetView<VerifyController> {
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
    );
  }
}
