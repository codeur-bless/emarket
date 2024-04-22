import 'package:market/config/consts.dart';

Widget customAppBar({String? title, icon, bgColor, titleColor}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          // size de l'icon 30
          icon,
          12.widthBox,
          title!.text.color(titleColor).size(20).fontFamily(semibold).make(),
        ],
      ),
    ],
  )
      .box
      .color(bgColor)
      .padding(EdgeInsets.symmetric(horizontal: 16, vertical: 12))
      .make();
}
