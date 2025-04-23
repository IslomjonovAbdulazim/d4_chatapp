part of 'imports.dart';

class ConfirmEmailPage extends StatelessWidget {
  const ConfirmEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ConfirmEmailController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _Texts(),
              SizedBox(height: 50),
              _Otp(),
              SizedBox(height: 20),
              _SendAgain(),
            ],
          ),
        ),
      ),
    );
  }
}
