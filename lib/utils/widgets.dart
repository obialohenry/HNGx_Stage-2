import 'package:flutter/material.dart';
import 'colors.dart';

Widget addVerticalDivider(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalDivider(double width) {
  return SizedBox(
    width: width,
  );
}

class ProfileTextField extends StatelessWidget {
  ProfileTextField({
    Key? key,
    required this.onPressed,
    required this.text,
    this.keyBoard,
  }) : super(key: key);
  Function(String value) onPressed;
  String text;
  TextInputType? keyBoard;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 42.0,
        width: double.infinity,
        child: TextField(
          keyboardType: keyBoard,
          cursorColor: AppColors.KWhite,
          style: const TextStyle(
            color: AppColors.KWhite,
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
          onChanged: onPressed,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
            hintText: text,
            hintStyle: const TextStyle(
              color: AppColors.KGrey,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
