import 'package:market/config/consts.dart';

Widget detailCard({String? title, String? count, width}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.size(18).fontFamily(bold).color(darkFontGrey).make(),
      title!.text.size(14).fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .alignCenter
      .roundedSM
      .outerShadow
      .color(whiteColor)
      .width(width)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .padding(EdgeInsets.symmetric(horizontal: 12, vertical: 8))
      .make();
}
