part of 'imports.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _Texts(),
              SizedBox(height: 50),
              _Otp(),
              _SendAgain(),
            ],
          ),
        ),
      ),
    );
  }
}
