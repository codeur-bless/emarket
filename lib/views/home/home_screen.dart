import 'package:market/views/admin/category/category.dart';
import 'package:market/views/admin/product/produit.dart';
import 'package:market/views/admin/subcategory/subcategory.dart';
import 'package:market/widgets/custom_button.dart';
import 'package:flutter/services.dart';

import '../../config/consts.dart';
import '../../widgets/futured_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMenuVisible = false;

  void _toggleMenuVisible() {
    setState(() {
      isMenuVisible = !isMenuVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: isMenuVisible ? Colors.transparent : whiteColor,
          statusBarIconBrightness: Brightness.dark),
    );
    return Scaffold(
      backgroundColor: isMenuVisible ? goldenlight : lightGrey,
      body: SafeArea(
        child: Stack(
          children: [
            // Mome sidebarMenu
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              top: context.screenHeight * 0.050,
              height: context.screenHeight / 1.27,
              width: 288,
              child: Visibility(
                visible: isMenuVisible,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.3,
                            color: darkFontGrey,
                          )
                        ],
                        color: Color.fromARGB(255, 32, 52, 61),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.close,
                            size: 28,
                          )
                              .onTap(() {
                                _toggleMenuVisible();
                              })
                              .box
                              .margin(EdgeInsets.only(top: 8, right: 8))
                              .color(whiteColor)
                              .roundedFull
                              .make(),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      imgProfile2,
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    )
                                        .box
                                        .color(goldenlight)
                                        .roundedFull
                                        .clip(Clip.antiAlias)
                                        .make(),
                                    10.widthBox,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        "Codeur_bless"
                                            .text
                                            .size(18)
                                            .fontFamily(bold)
                                            .color(whiteColor)
                                            .make(),
                                        5.heightBox,
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.code,
                                              size: 16,
                                              color: whiteColor,
                                            ),
                                            5.widthBox,
                                            "Développeur"
                                                .text
                                                .size(14)
                                                .fontFamily(bold)
                                                .color(whiteColor)
                                                .make(),
                                          ],
                                        ).onTap(() {}),
                                      ],
                                    ),
                                  ],
                                ),
                                20.heightBox,

                                // content
                                Row(
                                  children: [
                                    Icon(
                                      Icons.tag,
                                      color: darkFontGrey,
                                    ),
                                    12.widthBox,
                                    Expanded(
                                        child: "add categry"
                                            .text
                                            .color(darkFontGrey)
                                            .fontFamily(semibold)
                                            .size(18)
                                            .make()),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: darkFontGrey,
                                    )
                                  ],
                                )
                                    .box
                                    .roundedSM
                                    .color(lightGrey)
                                    .padding(EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10))
                                    .make()
                                    .onTap(() {
                                  Get.to(() => AdminCategoryScreen());
                                }),

                                10.heightBox,
                                // content
                                Row(
                                  children: [
                                    Icon(
                                      Icons.tag,
                                      color: darkFontGrey,
                                    ),
                                    12.widthBox,
                                    Expanded(
                                        child: "add Souscategry"
                                            .text
                                            .color(darkFontGrey)
                                            .fontFamily(semibold)
                                            .size(18)
                                            .make()),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: darkFontGrey,
                                    )
                                  ],
                                )
                                    .box
                                    .roundedSM
                                    .color(lightGrey)
                                    .padding(EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10))
                                    .make()
                                    .onTap(() {
                                  Get.to(() => AdminSubCategoryScreen());
                                }),

                                10.heightBox,
                                // content
                                Row(
                                  children: [
                                    Icon(
                                      Icons.tag,
                                      color: darkFontGrey,
                                    ),
                                    12.widthBox,
                                    Expanded(
                                        child: "add Product"
                                            .text
                                            .color(darkFontGrey)
                                            .fontFamily(semibold)
                                            .size(18)
                                            .make()),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: darkFontGrey,
                                    )
                                  ],
                                )
                                    .box
                                    .roundedSM
                                    .color(lightGrey)
                                    .padding(EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10))
                                    .make()
                                    .onTap(() {
                                  Get.to(() => AdminProductScreen());
                                }),
                              ],
                            ),
                          ),
                        ),
                        // bouton deconexion
                        customButton(
                          onPress: () {},
                          color: primaryColor,
                          textcolor: whiteColor,
                          title: "Déconnexion",
                          icon: Icon(
                            Icons.logout,
                            color: whiteColor,
                          ),
                        )
                            .box
                            .margin(EdgeInsets.symmetric(horizontal: 12))
                            .make(),

                        10.heightBox,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // homme page

            Transform.translate(
              offset: isMenuVisible ? Offset(288, 0) : Offset(0, 0),
              child: Column(
                // appbar
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            !isMenuVisible ? lightGrey : goldenlight,
                        radius: 22,
                        child: !isMenuVisible
                            ? Icon(
                                Icons.sort,
                                size: 30,
                                color: darkFontGrey,
                              )
                            : Icon(
                                Icons.home,
                                size: 30,
                                color: darkFontGrey,
                              ),
                      ).onTap(() {
                        _toggleMenuVisible();
                      }),
                      appname.text.fontFamily(bold).size(20).make(),
                      Row(
                        children: [
                          // Badge(
                          //   backgroundColor: primaryColor,
                          //   label: Text("8"),
                          //   offset: Offset(6, -7),
                          //   child: Icon(
                          //     Icons.shopping_cart,
                          //     size: 28,
                          //     color: darkFontGrey,
                          //   ),
                          // ),
                          // 18.widthBox,
                          Icon(
                            Icons.search,
                            size: 28,
                            color: darkFontGrey,
                          ),
                          // 10.widthBox,
                          // CircleAvatar(
                          //   backgroundColor: lightGrey,
                          //   radius: 22,
                          //   child: Icon(
                          //     Icons.person,
                          //     size: 30,
                          //     color: darkFontGrey,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  )
                      .box
                      .color(whiteColor)
                      .padding(
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8))
                      .make(),

                  // SizedBox(
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       suffixIcon: Icon(Icons.search),
                  //       border: InputBorder.none,
                  //       filled: true,
                  //       isDense: true,
                  //       fillColor: whiteColor,
                  //       hintText: "Recherche...",
                  //       hintStyle: TextStyle(color: textfieldGrey),
                  //     ),
                  //   ).box.shadowSm.padding(EdgeInsets.all(2)).make(),
                  // ),

                  // contenu
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        color: lightGrey,
                        child: Column(
                          children: [
                            // 20.heightBox,
                            // TextField(
                            //   decoration: InputDecoration(
                            //     suffixIcon: Icon(Icons.search),
                            //     border: InputBorder.none,
                            //     filled: true,
                            //     fillColor: whiteColor,
                            //     hintText: "Recherche...",
                            //     hintStyle: TextStyle(color: textfieldGrey),
                            //   ),
                            // )
                            //     .box
                            //     .shadowSm
                            //     .margin(EdgeInsets.symmetric(horizontal: 12))
                            //     .make(),

                            // swuipper
                            20.heightBox,
                            VxSwiper.builder(
                              aspectRatio: 16 / 9,
                              autoPlay: true,
                              height: 180,
                              pauseAutoPlayOnTouch: Duration(seconds: 1),
                              enlargeCenterPage: true,
                              itemCount: sliderList.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  sliderList[index],
                                  fit: BoxFit.fill,
                                )
                                    .box
                                    .rounded
                                    .clip(Clip.antiAlias)
                                    .margin(EdgeInsets.symmetric(horizontal: 8))
                                    .make();
                              },
                            ),
                            25.heightBox,

                            // meilleur category
                            Align(
                              alignment: Alignment.centerLeft,
                              child: "Meilleurs catégories"
                                  .text
                                  .fontFamily(bold)
                                  .size(22)
                                  .color(darkFontGrey)
                                  .make(),
                            )
                                .box
                                .padding(EdgeInsets.symmetric(horizontal: 12))
                                .make(),

                            20.heightBox,

                            // content
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: SizedBox(
                                height: 80,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(width: 18),
                                  shrinkWrap: true,
                                  itemCount: homeCategoryList.length,
                                  itemBuilder: (context, index) {
                                    var category = homeCategoryList[index];
                                    return Row(
                                      children: [
                                        Image.asset(
                                          category['image'],
                                          width: 45,
                                          height: 45,
                                          fit: BoxFit.cover,
                                        )
                                            .box
                                            .roundedSM
                                            .clip(Clip.antiAlias)
                                            .make(),
                                        10.widthBox,
                                        Text(
                                          category['name'],
                                          style: TextStyle(
                                              color: category['textcolor'],
                                              fontSize: 16,
                                              fontFamily: bold),
                                        )
                                      ],
                                    )
                                        .box
                                        .width(200)
                                        .padding(EdgeInsets.symmetric(
                                            horizontal: 12))
                                        .margin(
                                            EdgeInsets.symmetric(vertical: 1))
                                        .color(category['bgcolor']!)
                                        .shadowXs
                                        .roundedSM
                                        .make();
                                  },
                                ),
                              ),
                            ),

                            25.heightBox,

                            // meilleur tsProdui
                            Align(
                              alignment: Alignment.centerLeft,
                              child: "Meilleurs produits"
                                  .text
                                  .fontFamily(bold)
                                  .size(22)
                                  .color(darkFontGrey)
                                  .make(),
                            )
                                .box
                                .padding(EdgeInsets.symmetric(horizontal: 12))
                                .make(),

                            20.heightBox,

                            // Meilleur produit
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 2,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                    mainAxisExtent: 340,
                                  ),
                                  itemBuilder: (context, index) {
                                    var produit = homeProduitList[index];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            "- ${produit['promo']} %"
                                                .text
                                                .size(18)
                                                .color(darkFontGrey)
                                                .fontFamily(semibold)
                                                .make(),
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              size: 26,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          produit['image'],
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        "${produit['name']}"
                                            .text
                                            .size(16)
                                            .fontFamily(semibold)
                                            .color(darkFontGrey)
                                            .make(),
                                        6.heightBox,
                                        "${produit['prix']} CFA"
                                            .text
                                            .size(16)
                                            .fontFamily(bold)
                                            .color(primaryColor)
                                            .make(),
                                        Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            "Acheter"
                                                .text
                                                .size(18)
                                                .color(golden)
                                                .fontFamily(bold)
                                                .make()
                                                .box
                                                .padding(EdgeInsets.symmetric(
                                                    vertical: 2, horizontal: 8))
                                                .roundedSM
                                                .outerShadowSm
                                                .color(lightGrey)
                                                .make(),
                                            CircleAvatar(
                                              backgroundColor: primaryColor,
                                              child: Icon(
                                                Icons
                                                    .add_shopping_cart_outlined,
                                                size: 26,
                                                color: whiteColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                        .box
                                        .color(whiteColor)
                                        .outerShadowSm
                                        .roundedSM
                                        .padding(EdgeInsets.only(
                                            top: 12,
                                            left: 12,
                                            right: 12,
                                            bottom: 12))
                                        .margin(EdgeInsets.all(1))
                                        .make();
                                  }),
                            ),

                            25.heightBox,

                            Align(
                              alignment: Alignment.centerLeft,
                              child: "Explorez maintenant"
                                  .text
                                  .fontFamily(bold)
                                  .size(22)
                                  .color(darkFontGrey)
                                  .make(),
                            )
                                .box
                                .padding(EdgeInsets.symmetric(horizontal: 12))
                                .make(),

                            20.heightBox,
                            // top
                            SizedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: GridView.count(
                                  physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.8,
                                  shrinkWrap: true,
                                  children: List.generate(topViewList.length,
                                      (index) {
                                    var topview = topViewList[index];
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: topview['bgicon'],
                                          radius: 26,
                                          child: topview['icon'],
                                        ),
                                        8.heightBox,
                                        Text(
                                          topview['name'],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: topview['textcolor'],
                                            fontSize: 14,
                                            fontFamily: semibold,
                                          ),
                                        )
                                      ],
                                    )
                                        .box
                                        .white
                                        .color(topview['bgbox']!)
                                        .roundedSM
                                        .margin(EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 6))
                                        .make();
                                  }).toList(),
                                ),
                              ),
                            ),

                            20.heightBox,

                            // Les Nouvelles collections
                            Align(
                              alignment: Alignment.centerLeft,
                              child: "Les nouvelles collections"
                                  .text
                                  .fontFamily(bold)
                                  .size(22)
                                  .color(darkFontGrey)
                                  .make(),
                            )
                                .box
                                .padding(EdgeInsets.symmetric(horizontal: 12))
                                .make(),

                            20.heightBox,
                            // swuipper
                            VxSwiper.builder(
                              aspectRatio: 16 / 9,
                              autoPlay: true,
                              height: 180,
                              pauseAutoPlayOnTouch: Duration(seconds: 1),
                              enlargeCenterPage: true,
                              itemCount: secondeSliderList.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  secondeSliderList[index],
                                  fit: BoxFit.fill,
                                )
                                    .box
                                    .roundedSM
                                    .clip(Clip.antiAlias)
                                    .margin(EdgeInsets.symmetric(horizontal: 8))
                                    .make();
                              },
                            ),
                            25.heightBox,

                            // les future startup
                            Align(
                              alignment: Alignment.centerLeft,
                              child: "Les futures startup"
                                  .text
                                  .fontFamily(bold)
                                  .size(22)
                                  .color(darkFontGrey)
                                  .make(),
                            )
                                .box
                                .padding(EdgeInsets.symmetric(horizontal: 12))
                                .make(),

                            20.heightBox,

                            // contenu
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: List.generate(4, (index) {
                                    var mark1 = futuredCategoryList[index];
                                    var mark2 =
                                        secondFuturedCategoryList[index];
                                    return Column(
                                      children: [
                                        futuredButton(
                                            title: mark1['name']!,
                                            icon: mark1['image']),
                                        10.heightBox,
                                        futuredButton(
                                            title: mark2['name']!,
                                            icon: mark2['image']),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            20.heightBox,

                            // future produit
                            Column(
                              children: [
                                12.heightBox,
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: "Les futures produits"
                                      .text
                                      .fontFamily(bold)
                                      .size(22)
                                      .color(whiteColor)
                                      .make(),
                                )
                                    .box
                                    .padding(
                                        EdgeInsets.symmetric(horizontal: 12))
                                    .make(),

                                // les  produits
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(6, (index) {
                                      var produit = homeProduitList[index];
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                  )
                                      .box
                                      .padding(EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 16))
                                      .color(primaryColor)
                                      .make(),
                                ),
                              ],
                            )
                                .box
                                .padding(EdgeInsets.symmetric(vertical: 4))
                                .bgImage(DecorationImage(
                                    image: AssetImage(imgBackground),
                                    fit: BoxFit.fill))
                                .make(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  .box
                  .border(
                      width: isMenuVisible ? 2 : 0,
                      color: isMenuVisible ? primaryColor : Colors.transparent)
                  .margin(isMenuVisible
                      ? EdgeInsets.symmetric(vertical: 14)
                      : EdgeInsets.symmetric(vertical: 0))
                  .make(),
            ),
          ],
        ),
      ),
    );
  }
}
