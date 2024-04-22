import 'package:market/views/auth/login_screen.dart';
import 'package:market/widgets/applogo.dart';

import '../config/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: context.screenHeight / 2.3,
                height: context.screenHeight / 2.3,
                fit: BoxFit.cover,
              ),
            ),
            applogowidget(),
            10.heightBox,
            appname.text.white.fontFamily(bold).size(22).make(),
            5.heightBox,
            appversion.text.white.fontFamily(regular).make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            20.heightBox
          ],
        ),
      ),
    );
  }
}
