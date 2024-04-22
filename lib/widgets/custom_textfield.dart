import '../config/consts.dart';

Widget customTextfield({String? title, icon, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(primaryColor).size(16).fontFamily(semibold).make(),
      5.heightBox,
      TextField(
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: icon,
          prefixIconColor: primaryColor,
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          filled: true,
          fillColor: lightGrey,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
        ),
      ),
    ],
  );
}
