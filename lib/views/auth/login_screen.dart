import '../../config/consts.dart';
import '../../widgets/applogo.dart';
import '../../widgets/bgapp.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../home/home_layout.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? _checkMe = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      backgroundColor: whiteColor,
      body: bgWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  (context.screenHeight * 0.05).heightBox,
                  applogowidget(),
                  10.heightBox,
                  "Connexion sur $appname"
                      .text
                      .white
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      customTextfield(
                        title: email,
                        hint: emailhint,
                        icon: Icon(Icons.email),
                      ),
                      10.heightBox,
                      customTextfield(
                        title: password,
                        hint: passwordhint,
                        icon: Icon(Icons.lock),
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Checkbox(
                            checkColor: whiteColor,
                            activeColor: primaryColor,
                            value: _checkMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _checkMe = value;
                              });
                            },
                          ),
                          Text(
                            "Remenber Me !",
                          ),
                        ],
                      ),
                      10.heightBox,
                      customButton(
                        onPress: () {
                          Get.off(() => HomeLayout());
                        },
                        icon: Icon(
                          Icons.login,
                          color: whiteColor,
                        ),
                        title: "Connexion",
                        color: primaryColor,
                        textcolor: whiteColor,
                      ).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      "Pas de compte chez $appname ?"
                          .text
                          .color(fontGrey)
                          .make(),
                      10.heightBox,
                      customButton(
                        onPress: () {
                          Get.to(() => RegisterScreen());
                        },
                        icon: Icon(
                          Icons.save,
                          color: whiteColor,
                        ),
                        title: "Inscription",
                        color: golden,
                        textcolor: whiteColor,
                      ).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      "Ou continuer avec ".text.color(fontGrey).make(),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: CircleAvatar(
                                    backgroundColor: lightGrey,
                                    radius: 22,
                                    child: Image.asset(
                                      socialIconList[index],
                                      width: 30,
                                    ),
                                  ),
                                )),
                      ),
                      10.heightBox,
                      "Mot de passe oublier ?"
                          .text
                          .color(Colors.blueAccent)
                          .make(),
                    ],
                  )
                      .box
                      .white
                      .shadowSm
                      .rounded
                      .padding(EdgeInsets.all(18))
                      .width(context.screenWidth - 70)
                      .make(),
                  20.heightBox,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
