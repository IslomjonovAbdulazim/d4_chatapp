part of 'imports.dart';

class ConfirmEmailController extends GetxController {
  RxBool isLoading = false.obs;

  void onSubmitted(String otp) async {
    if (otp.length == 6) {
      isLoading.value = true;

      // connect to backend
      await Future.delayed(Duration(seconds: 1));

      isLoading.value = false;

      Get.to(ResetPasswordPage());
    }
  }

  void resend() async {
    isLoading.value = true;

    // connect to backend
    await Future.delayed(Duration(seconds: 1));

    isLoading.value = false;

  }
}
