import 'package:flutter/material.dart';
import 'package:hngx_stage_2/model/my_Cv.dart';
import 'package:hngx_stage_2/screens/edit_screen.dart';
import 'package:hngx_stage_2/screens/my_Personal_and_cv_information.dart';
import 'package:hngx_stage_2/utils/colors.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.KGrey,
              width: 3.0,
            ),
          ),
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black), // Border color when enabled
          // ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.KEditButton,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10.0) // Border color when focused
              ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: AppColors.KWhite,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
          bodyMedium: TextStyle(
            color: AppColors.KWhite,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.KBlack,
          titleTextStyle: TextStyle(
            color: AppColors.KWhite,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      home: MyPersonalAndCvInformation(
        name: 'Obialor Chisomebi henry',
        slackName: 'Obialor Henry Chisomebi',
        githubProfile: "https://github.com/obialohenry",
        bio: "I'm Obialor Henry Chisomebi, a dedicated mobile developer specializing"
            "in Flutter and Dart. My passion lies in continuous growth within the realm "
            "of mobile development, particularly with Flutter. I'm deeply committed to"
            " learning, building, and solving problems in the world of mobile app development."
            " Currently, I'm a final year student at the Federal University of Technology,"
            " pursuing a degree in Mechanical Engineering.",
      ),
    ),
  );
}

