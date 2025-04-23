part of 'imports.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _Texts(),
              SizedBox(height: 20),
              _Input(),
              SizedBox(height: 20),
              _Button(),
            ],
          ),
        ),
      ),
    );
  }
}
