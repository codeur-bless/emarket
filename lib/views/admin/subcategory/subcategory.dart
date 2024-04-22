import 'package:market/widgets/custom_appbar.dart';
import 'package:market/widgets/custom_button.dart';
import 'package:market/widgets/custom_textfield.dart';

import '../../../config/consts.dart';

class AdminSubCategoryScreen extends StatefulWidget {
  const AdminSubCategoryScreen({super.key});

  @override
  State<AdminSubCategoryScreen> createState() => _AdminSubCategoryScreenState();
}

class _AdminSubCategoryScreenState extends State<AdminSubCategoryScreen> {
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(
                    bgColor: Colors.transparent,
                    titleColor: darkFontGrey,
                    title: "Liste des Souscategories",
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
                                title: "Electronique"
                                    .text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make(),
                                subtitle: "sous categorie"
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
                      "Ajouter une Categorie"
                          .text
                          .size(22)
                          .fontFamily(bold)
                          .make(),
                      20.heightBox,
                      // selected
                      "Categorie"
                          .text
                          .size(16)
                          .fontFamily(semibold)
                          .color(primaryColor)
                          .make(),

                      // code a revoir pour le dropdown
                      DropdownButton<String>(
                        value: _selectedItem,
                        borderRadius: BorderRadius.circular(10),
                        autofocus: true,
                        hint: Text('Choisisez la catégorie'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue;
                          });
                        },
                        items: <String>["itm1", "itm 2", "hgfgf", "hzfe"].map(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),

                      12.heightBox,
                      customTextfield(
                        icon: Icon(Icons.read_more, color: darkFontGrey),
                        hint: "",
                        title: "Sous Catégories",
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
