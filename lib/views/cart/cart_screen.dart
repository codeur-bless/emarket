import 'package:market/widgets/custom_appbar.dart';
import 'package:market/widgets/custom_button.dart';

import '../../config/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
            // appbar
            customAppBar(
                bgColor: whiteColor,
                titleColor: darkFontGrey,
                title: "Votre Panier",
                icon: CircleAvatar(
                  backgroundColor: goldenlight,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 28,
                    color: darkFontGrey,
                  ),
                )),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 12),
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    20.heightBox,
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: ((context, index) =>
                          SizedBox(height: 10)),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        var produit = homeProduitList[index];
                        return ListTile(
                          leading: Image.asset(produit['image']),
                          title: "${produit['name']}"
                              .text
                              .size(16)
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                          subtitle: "${produit['prix']} CFA"
                              .text
                              .color(primaryColor)
                              .fontFamily(semibold)
                              .make(),
                          trailing: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        )
                            .box
                            .padding(EdgeInsets.symmetric(vertical: 4))
                            .outerShadowSm
                            .color(whiteColor)
                            .make();
                      }),
                    ),

                    20.heightBox,
                    //
                  ],
                ),
              ),
            ),

            // bouton du bas du panier
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Prix Total : "
                        .text
                        .size(18)
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .make(),
                    "65000 CFA"
                        .text
                        .size(18)
                        .fontFamily(bold)
                        .color(primaryColor)
                        .make(),
                  ],
                ),
                8.heightBox,
                customButton(
                  onPress: () {},
                  color: primaryColor,
                  icon: Icon(
                    Icons.wallet,
                    color: whiteColor,
                  ),
                  textcolor: whiteColor,
                  title: "Procéder au paiement",
                )
              ],
            )
                .box
                .color(goldenlight)
                .padding(
                    EdgeInsets.only(left: 14, right: 14, bottom: 6, top: 10))
                .make(),
          ],
        ),
      ),
    );
  }
}
