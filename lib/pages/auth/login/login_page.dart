part of 'imports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _WelcomeTexts(),
              SizedBox(height: 50),
              _Inputs(),
            ],
          ),
        ),
      ),
    );
  }
}
