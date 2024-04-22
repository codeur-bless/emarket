import 'package:market/widgets/custom_appbar.dart';
import 'package:market/widgets/custom_button.dart';
import 'package:market/widgets/custom_textfield.dart';

import '../../config/consts.dart';
import 'package:market/widgets/bgapp.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgWidget(
        child: SafeArea(
          child: Column(
            children: [
              // Appbar
              customAppBar(
                  bgColor: Colors.transparent,
                  titleColor: whiteColor,
                  title: "Modifier Profil",
                  icon: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: whiteColor,
                      ),
                    ),
                  ).onTap(() {
                    Get.back();
                  })),

              // containte
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      20.heightBox,
                      Image.asset(
                        imgProfile2,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      )
                          .box
                          .color(goldenlight)
                          .roundedFull
                          .clip(Clip.antiAlias)
                          .make(),

                      10.heightBox,
                      // boutton to change the image
                      customButton(
                        color: darkFontGrey,
                        icon: Icon(
                          Icons.change_circle,
                          color: whiteColor,
                        ),
                        textcolor: whiteColor,
                        title: "Modifier",
                        onPress: () {},
                      ).box.width(130).make(),
                      10.heightBox,

                      // POur modifier les info
                      Column(
                        children: [
                          customTextfield(
                            title: name,
                            hint: namehint,
                            icon: Icon(Icons.person),
                          ),
                          10.heightBox,
                          customTextfield(
                            title: adresse,
                            hint: adressehint,
                            icon: Icon(Icons.home),
                          ),
                          10.heightBox,
                          customTextfield(
                            title: "Ancien mot de passe",
                            hint: passwordhint,
                            icon: Icon(Icons.lock),
                          ),
                          10.heightBox,
                          customTextfield(
                            title: "Nouveau mot de passe",
                            hint: passwordhint,
                            icon: Icon(Icons.lock_reset_outlined),
                          ),
                          20.heightBox,

                          // boutton pour modifier
                          customButton(
                            onPress: () async {},
                            icon: Icon(
                              Icons.change_circle,
                              color: whiteColor,
                            ),
                            title: "Enrégistrer",
                            color: primaryColor,
                            textcolor: whiteColor,
                          ).box.width(context.screenWidth).make(),
                        ],
                      )
                          .box
                          .outerShadow
                          .color(textfieldGrey)
                          .roundedSM
                          .margin(EdgeInsets.symmetric(horizontal: 8))
                          .padding(EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16))
                          .outerShadow
                          .make()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
