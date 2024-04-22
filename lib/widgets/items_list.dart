import 'package:market/config/consts.dart';

Widget itemsList({String? title, icon, onPress}) {
  return Row(
    children: [
      icon,
      12.widthBox,
      Expanded(child: title!.text.fontFamily(semibold).size(16).make()),
      Icon(
        Icons.arrow_forward,
        color: darkFontGrey,
      )
    ],
  )
      .box
      .color(whiteColor)
      .padding(EdgeInsets.symmetric(horizontal: 12, vertical: 22))
      .make();
}
