part of 'imports.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
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
              Spacer(),
              _RegisterButton(),
              SizedBox(height: 10),
              _GoLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
