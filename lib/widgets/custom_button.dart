import '../config/consts.dart';

Widget customButton({String? title, icon, color, textcolor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    onPressed: onPress,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        8.widthBox,
        title!.text.color(textcolor).size(16).fontFamily(bold).make(),
      ],
    ),
  );
}
