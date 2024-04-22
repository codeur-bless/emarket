import '.././config/consts.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: context.screenWidth,
      height: context.screenHeight,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(imgProfile2), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          children: [
            "ijgtehir".text.make(),
          ],
        ),
      ),
    ));
  }
}
