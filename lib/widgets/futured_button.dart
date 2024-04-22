import 'package:market/config/consts.dart';

Widget futuredButton({String? title, icon, bgcolor}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      Expanded(
          child: title!.text
              .fontFamily(semibold)
              .size(16)
              .color(darkFontGrey)
              .make())
    ],
  )
      .box
      .width(200)
      .height(80)
      .color(whiteColor)
      .roundedSM
      .outerShadowSm
      .margin(EdgeInsets.symmetric(horizontal: 8, vertical: 4))
      .padding(EdgeInsets.symmetric(horizontal: 12, vertical: 8))
      .make();
}
