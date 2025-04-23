part of 'imports.dart';

class VerifyController extends GetxController {
  RxBool isLoading = false.obs;

  void onSubmitted(String otp) async {
    if (otp.length == 6) {
      isLoading.value = true;

      // connect to backend
      await Future.delayed(Duration(seconds: 1));

      isLoading.value = false;
    }
  }
}
