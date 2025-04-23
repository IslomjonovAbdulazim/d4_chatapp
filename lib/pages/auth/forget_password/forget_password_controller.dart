part of 'imports.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  RxBool isLoading = false.obs;

  void sendOtp() async {
    isLoading.value = true;

    // connect backend
    await Future.delayed(Duration(seconds: 1));

    isLoading.value = false;

    Get.to(ConfirmEmailPage());
  }
}
