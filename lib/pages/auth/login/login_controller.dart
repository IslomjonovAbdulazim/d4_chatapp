part of 'imports.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  void login() async {
    if (isLoading.value == true) return;

    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    isLoading.value = true;
    // connect to backend
    await Future.delayed(Duration(seconds: 0));


    isLoading.value = false;
  }

  Future<void> connectBackend() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) return;

  }
}

















