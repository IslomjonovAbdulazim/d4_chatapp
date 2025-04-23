part of 'imports.dart';

class RegisterController extends GetxController {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  void register() async {
    isLoading.value = true;
    String fullname = fullnameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // connect to backend

    await Future.delayed(Duration(seconds: 1));
    isLoading.value = false;
  }
}
