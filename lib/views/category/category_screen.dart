import 'package:market/views/category/category_detail.dart';
import 'package:market/widgets/bgapp.dart';
import 'package:market/widgets/custom_appbar.dart';

import '../../config/consts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
                  title: "Catégories",
                  icon: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.category_sharp,
                        size: 28,
                        color: whiteColor,
                      ),
                    ),
                  )),

              // containt
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      20.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: CategoryList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              mainAxisExtent: 200,
                            ),
                            itemBuilder: (context, index) {
                              var category = CategoryList[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    category['image'],
                                    width: 100,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  14.heightBox,
                                  "${category['name']}"
                                      .text
                                      .fontFamily(semibold)
                                      .align(TextAlign.center)
                                      .make()
                                ],
                              )
                                  .box
                                  .color(whiteColor)
                                  .roundedSM
                                  .outerShadow
                                  .padding(EdgeInsets.only(
                                      top: 0, left: 12, right: 12))
                                  .margin(EdgeInsets.all(1))
                                  .make()
                                  .onTap(() {
                                Get.to(() => CategoryDetail(
                                    title: "${category['name']}"));
                              });
                            }),
                      ),
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
