import 'package:market/views/product/items_detail.dart';
import 'package:market/widgets/custom_appbar.dart';

import '../../config/consts.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: whiteColor, statusBarIconBrightness: Brightness.dark),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // back nav personalise
            customAppBar(
              title: "Boutique",
              bgColor: whiteColor,
              titleColor: darkFontGrey,
              icon: CircleAvatar(
                backgroundColor: goldenlight,
                child: Icon(
                  Icons.store,
                  color: darkFontGrey,
                  size: 28,
                ),
              ),
            ),

            5.heightBox,
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
                filled: true,
                fillColor: whiteColor,
                hintText: "Recherche...",
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            )
                .box
                .outerShadow
                .margin(EdgeInsets.symmetric(horizontal: 12))
                .make(),

            5.heightBox,

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    15.heightBox,
                    // les produit

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
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    produit['image'],
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ).onTap(() {
                                    Get.to(() => ItemsDetail(
                                          title: "${produit['name']}",
                                        ));
                                  }),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
