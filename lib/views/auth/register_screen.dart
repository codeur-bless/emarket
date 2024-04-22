import "../../config/consts.dart";
import "../../widgets/applogo.dart";
import "../../widgets/bgapp.dart";
import "../../widgets/custom_button.dart";
import "../../widgets/custom_textfield.dart";

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool? isCheck = false;

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
                  "Rejoindre $appname"
                      .text
                      .white
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      customTextfield(
                        title: name,
                        hint: namehint,
                        icon: Icon(Icons.person),
                      ),
                      10.heightBox,
                      customTextfield(
                        title: email,
                        hint: emailhint,
                        icon: Icon(Icons.email),
                      ),
                      10.heightBox,
                      customTextfield(
                        title: adresse,
                        hint: adressehint,
                        icon: Icon(Icons.home),
                      ),
                      10.heightBox,
                      customTextfield(
                        title: password,
                        hint: passwordhint,
                        icon: Icon(Icons.lock),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: primaryColor,
                            value: isCheck,
                            onChanged: (value) {
                              setState(() {
                                isCheck = value;
                              });
                            },
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "J'accepte les ",
                                  style: TextStyle(
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: "Termes & Conditions",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: semibold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      customButton(
                        onPress: () {},
                        icon: Icon(
                          Icons.login,
                          color: whiteColor,
                        ),
                        title: "Inscription",
                        color: isCheck == true ? primaryColor : lightGrey,
                        textcolor: whiteColor,
                      ).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Vous avez déja un Compte? "
                              .text
                              .color(fontGrey)
                              .fontFamily(semibold)
                              .make(),
                          "Se connecter"
                              .text
                              .color(primaryColor)
                              .fontFamily(bold)
                              .make()
                              .onTap(() {
                            Get.back();
                          })
                        ],
                      ),
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
