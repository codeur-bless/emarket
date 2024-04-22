import 'package:market/widgets/custom_button.dart';

import '../../config/consts.dart';

class ItemsDetail extends StatelessWidget {
  final String? title;
  const ItemsDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: whiteColor, statusBarIconBrightness: Brightness.dark),
    );
    return Scaffold(
      backgroundColor: lightGrey,
      body: SafeArea(
        child: Column(
          children: [
            // back nav personalise
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: darkFontGrey,
                    ).onTap(() {
                      Get.back();
                    }),
                  ],
                ),

                // action button

                Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 26,
                      color: darkFontGrey,
                    ).onTap(() {}),
                    16.widthBox,
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 26,
                      color: Colors.red,
                    ).onTap(() {}),
                  ],
                ),
              ],
            )
                .box
                .color(whiteColor)
                .padding(EdgeInsets.symmetric(horizontal: 12, vertical: 16))
                .make(),

            // le body du produit

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,

                    // image en carrocell des produit

                    VxSwiper.builder(
                      height: 250,
                      enlargeCenterPage: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgP3,
                          fit: BoxFit.cover,
                        )
                            .box
                            .color(whiteColor)
                            .width(context.screenWidth - 70)
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      },
                    ),

                    20.heightBox,

                    // info sur les produits
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title!.text
                            .fontFamily(bold)
                            .size(20)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        Row(
                          children: [
                            VxRating(
                              onRatingUpdate: (value) {},
                              normalColor: darkFontGrey,
                              selectionColor: golden,
                              stepInt: true,
                              count: 5,
                            ),
                            8.widthBox,
                            "(455 avis)"
                                .text
                                .fontFamily(semibold)
                                .color(decColor)
                                .make()
                          ],
                        ),
                        10.heightBox,
                        "25500 CFA"
                            .text
                            .size(18)
                            .fontFamily(bold)
                            .color(primaryColor)
                            .make(),
                        20.heightBox,

                        // Contacter le fournisseur
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Salut !"
                                      .text
                                      .size(16)
                                      .fontFamily(semibold)
                                      .color(decColor)
                                      .make(),
                                  "Contacter le fournisseur"
                                      .text
                                      .size(16)
                                      .color(darkFontGrey)
                                      .make()
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: whiteColor,
                              child: Icon(
                                Icons.message,
                                size: 26,
                                color: darkFontGrey,
                              ),
                            ),
                          ],
                        )
                            .box
                            .color(textfieldGrey)
                            .roundedSM
                            .padding(EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10))
                            .make(),

                        20.heightBox,
                        // color section
                        Row(
                          children: [
                            "Couleur : "
                                .text
                                .size(18)
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make(),
                            Row(
                              children: List.generate(4, (index) {
                                return VxBox()
                                    .size(30, 30)
                                    .margin(EdgeInsets.symmetric(horizontal: 6))
                                    .roundedFull
                                    .color(Vx.randomOpaqueColor)
                                    .make();
                              }).toList(),
                            ),
                          ],
                        )
                            .box
                            .height(60)
                            .color(whiteColor)
                            .padding(EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10))
                            .outerShadow
                            .make(),

                        10.heightBox,

                        // quantité section
                        Row(
                          children: [
                            "Quantité : "
                                .text
                                .size(18)
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make(),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove, color: primaryColor)
                                      .box
                                      .roundedFull
                                      .shadowSm
                                      .color(lightGrey)
                                      .make(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: "1"
                                      .text
                                      .size(18)
                                      .fontFamily(bold)
                                      .color(darkFontGrey)
                                      .make(),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: primaryColor,
                                  )
                                      .box
                                      .roundedFull
                                      .shadowSm
                                      .color(lightGrey)
                                      .make(),
                                ),
                                6.widthBox,
                                "(17 en stock)"
                                    .text
                                    .fontFamily(semibold)
                                    .color(decColor)
                                    .make()
                              ],
                            ),
                          ],
                        )
                            .box
                            .height(60)
                            .color(whiteColor)
                            .padding(EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10))
                            .outerShadow
                            .make(),

                        30.heightBox,
                        VxDivider(width: 5, color: textfieldGrey),
                        20.heightBox,

                        // description

                        "Description".text.size(20).fontFamily(semibold).make(),
                        20.heightBox,
                        "Loren hgh jjfjfg hfhhfhf hfhf hfhhe hgru hgreje rjbjreh rebjr jfjdh uutehut jehnuhu erhure urehrjeher jb jhrehujre ruegu rehuzre ujgrhguhuzf hrguhrhughuhrgegoehiehrtht"
                            .text
                            .align(TextAlign.justify)
                            .fontFamily(semibold)
                            .make(),

                        26.heightBox,
                        VxDivider(width: 5, color: textfieldGrey),
                        20.heightBox,
                        // produit relative
                        "Produits similaires"
                            .text
                            .size(20)
                            .fontFamily(semibold)
                            .make(),

                        20.heightBox,
                        // les  produits
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6, (index) {
                              var produit = homeProduitList[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      produit['image'],
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Spacer(),
                                  "${produit['name']}"
                                      .text
                                      .size(14)
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  8.heightBox,
                                  "${produit['prix']} CFA"
                                      .text
                                      .size(16)
                                      .fontFamily(bold)
                                      .color(primaryColor)
                                      .make(),
                                  8.heightBox,
                                ],
                              )
                                  .box
                                  .outerShadow
                                  .height(250)
                                  .width(170)
                                  .color(whiteColor)
                                  .roundedSM
                                  .margin(EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4))
                                  .padding(EdgeInsets.all(8))
                                  .make();
                            }).toList(),
                          ),
                        ),

                        10.heightBox,
                      ],
                    ).box.padding(EdgeInsets.symmetric(horizontal: 12)).make(),
                  ],
                ),
              ),
            ),

            // bouton d'action pour le paiement

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 12, left: 8, right: 8, bottom: 8),
              child: Row(
                children: [
                  customButton(
                    onPress: () {},
                    icon: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: whiteColor,
                    ),
                    color: primaryColor,
                    title: "Ajouter",
                    textcolor: whiteColor,
                  )
                      .box
                      .margin(EdgeInsets.symmetric(horizontal: 6))
                      .width(160)
                      .height(50)
                      .make(),
                  customButton(
                    icon: Icon(
                      Icons.payments,
                      color: whiteColor,
                    ),
                    color: golden,
                    title: "Commander",
                    textcolor: whiteColor,
                    onPress: () {},
                  )
                      .box
                      .width(160)
                      .margin(EdgeInsets.symmetric(horizontal: 6))
                      .height(50)
                      .make(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
