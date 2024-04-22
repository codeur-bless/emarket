import 'package:market/views/profile/edit_profile_screen.dart';
import 'package:market/widgets/detail_card.dart';
import 'package:market/widgets/items_list.dart';
import 'package:market/widgets/bgapp.dart';

import '../../config/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          child: Column(
            children: [
              10.heightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    )
                        .box
                        .color(goldenlight)
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Codeur_bless"
                              .text
                              .size(18)
                              .fontFamily(bold)
                              .color(whiteColor)
                              .make(),
                          "blessempir@gmail.com"
                              .text
                              .size(12)
                              .color(whiteColor)
                              .make(),
                          5.heightBox,
                          Row(
                            children: [
                              "Modifier"
                                  .text
                                  .size(14)
                                  .fontFamily(bold)
                                  .color(whiteColor)
                                  .make(),
                              5.widthBox,
                              Icon(
                                Icons.edit,
                                size: 16,
                                color: whiteColor,
                              )
                            ],
                          ).onTap(() {
                            Get.to(() => EditProfileScreen());
                          }),
                        ],
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            side: BorderSide(color: whiteColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                        child: "Déconnexion"
                            .text
                            .size(16)
                            .fontFamily(semibold)
                            .color(whiteColor)
                            .make())
                  ],
                ),
              ),
              12.heightBox,
              // les infos
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    detailCard(
                        count: "02",
                        title: "Au panier",
                        width: context.screenWidth / 3.3),
                    detailCard(
                        count: "3455",
                        title: "Favories",
                        width: context.screenWidth / 3.3),
                    detailCard(
                        count: "321",
                        title: "Achats",
                        width: context.screenWidth / 3.3),
                  ],
                ),
              ),

              8.heightBox,
              // containt
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      12.heightBox,
                      // Paage acoc de profil
                      Column(
                        children: [
                          itemsList(
                              title: "Mon Portfeuil",
                              icon: Icon(Icons.wallet_outlined)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Mes Commandes",
                              icon: Icon(Icons.list_alt)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Mes Favories",
                              icon: Icon(Icons.favorite_outline)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Assistance",
                              icon: Icon(Icons.help_outline)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Mes Demandes",
                              icon: Icon(Icons.data_saver_off_sharp)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Messages",
                              icon: Icon(Icons.chat_outlined)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Mes Bonus",
                              icon: Icon(Icons.card_giftcard)),
                          VxDivider(color: textfieldGrey),
                          itemsList(
                              title: "Quiz",
                              icon: Icon(Icons.model_training_outlined)),
                          VxDivider(color: textfieldGrey),
                        ],
                      )
                          .box
                          .color(whiteColor)
                          .width(context.screenWidth - 40)
                          .padding(EdgeInsets.symmetric(horizontal: 16))
                          .outerShadow
                          .roundedSM
                          .make(),
                      20.heightBox,
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
