import 'package:market/views/product/items_detail.dart';
import 'package:market/widgets/bgapp.dart';
import 'package:market/widgets/custom_appbar.dart';

import '../../config/consts.dart';

class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({super.key, required this.title});

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
              // back nav personalise
              customAppBar(
                  bgColor: Colors.transparent,
                  titleColor: whiteColor,
                  title: title,
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

              // category
              10.heightBox,

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(CategoryList.length, (index) {
                    var category = CategoryList[index];
                    return "${category['name']}"
                        .text
                        .size(14)
                        .fontFamily(semibold)
                        .make()
                        .box
                        .alignCenter
                        .roundedSM
                        .outerShadowSm
                        .color(whiteColor)
                        .height(55)
                        .margin(
                            EdgeInsets.symmetric(horizontal: 4, vertical: 2))
                        .padding(EdgeInsets.symmetric(horizontal: 12))
                        .make();
                  }).toList(),
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      // les produit
                      20.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: homeProduitList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              mainAxisExtent: 305,
                            ),
                            itemBuilder: (context, index) {
                              var produit = homeProduitList[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // fonction on tap
                                  Image.asset(
                                    produit['image'],
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ).onTap(() {
                                    Get.to(() => ItemsDetail(
                                          title: "${produit['name']}",
                                        ));
                                  }),

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          Icons.add_shopping_cart_outlined,
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
                                  .roundedSM
                                  .outerShadow
                                  .padding(EdgeInsets.only(
                                      top: 1, left: 12, right: 12, bottom: 12))
                                  .margin(EdgeInsets.all(1))
                                  .make();
                            }),
                      ),
                      20.heightBox,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
