import 'package:market/widgets/custom_appbar.dart';

import '../../../config/consts.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';

class AdminProductScreen extends StatelessWidget {
  const AdminProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                customAppBar(
                    bgColor: Colors.transparent,
                    titleColor: darkFontGrey,
                    title: "Liste des Produits",
                    icon: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: darkFontGrey,
                        ),
                      ),
                    ).onTap(() {
                      Get.back();
                    })),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
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
                                trailing: Column(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: darkFontGrey,
                                    ),
                                    8.heightBox,
                                    Icon(Icons.delete, color: Colors.red),
                                  ],
                                ))
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              backgroundColor: lightGrey,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 12,
                          width: 100,
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      20.heightBox,
                      "Ajouter un Produit"
                          .text
                          .size(22)
                          .fontFamily(bold)
                          .make(),
                      20.heightBox,
                      customTextfield(
                        icon: Icon(Icons.abc, color: darkFontGrey),
                        hint: "",
                        title: "Nom du produit",
                      ),
                      12.heightBox,
                      customTextfield(
                        icon: Icon(Icons.category, color: darkFontGrey),
                        hint: "",
                        title: "Catégorie",
                      ),
                      12.heightBox,
                      customTextfield(
                        icon: Icon(Icons.price_check, color: darkFontGrey),
                        hint: "",
                        title: "Prix",
                      ),
                      12.heightBox,
                      customTextfield(
                        icon: Icon(Icons.description, color: darkFontGrey),
                        hint: "",
                        title: "Description",
                      ),
                      20.heightBox,
                      customButton(
                        onPress: () {},
                        color: primaryColor,
                        icon: Icon(Icons.save, color: whiteColor),
                        textcolor: whiteColor,
                        title: "Enrégistrer",
                      ),
                    ],
                  )
                      .box
                      .padding(
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20))
                      .make(),
                );
              });
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: whiteColor,
          size: 26,
        ),
      ),
    );
  }
}
