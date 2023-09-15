import 'package:flutter/material.dart';
import 'package:hngx_stage_2/screens/my_Personal_and_cv_information.dart';
import 'package:hngx_stage_2/utils/colors.dart';
import 'package:hngx_stage_2/utils/widgets.dart';
import 'package:hngx_stage_2/model/my_Cv.dart';
import 'edit_screen.dart';

class EditPage extends StatefulWidget {
  EditPage({Key? key}) : super(key: key);
  static const id = "EditPage";

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String? year;
  String? title;
  String? description;
  String name = 'Obialor Chisomebi henry';
  String slackName = 'Obialor Henry Chisomebi';
  String githubProfile = "https://github.com/obialohenry";
  String bio = "I'm Obialor Henry Chisomebi, a dedicated mobile developer specializing"
      "in Flutter and Dart. My passion lies in continuous growth within the realm "
      "of mobile development, particularly with Flutter. I'm deeply committed to"
      " learning, building, and solving problems in the world of mobile app development."
      " Currently, I'm a final year student at the Federal University of Technology,"
      " pursuing a degree in Mechanical Engineering.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KScaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    name = value;
                  });
                },
                text: "Name",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    slackName = value;
                  });
                },
                text: "Slack Username",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    githubProfile = value;
                  });
                },
                text: "GitHub Profile",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    bio = value;
                  });
                },
                text: "Bio",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    year = value;
                  });
                },
                text: "Year you did project",
                keyBoard: TextInputType.number,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    title = value;
                  });
                },
                text: "Title of project",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(25.0),
              ProfileTextField(
                onPressed: (value) {
                  setState(() {
                    description = value;
                  });
                },
                text: "Project description",
                keyBoard: TextInputType.text,
              ),
              addVerticalDivider(40.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: AppColors.KEditButton, elevation: 15.0),
                  onPressed: () {
                    myCV.add(
                      MyCV(
                        isVisible: true,
                        decription: description ?? "",
                        title: title ?? "",
                        year: year ?? "",
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => MyPersonalAndCvInformation(
                              name: name,
                              githubProfile: githubProfile,
                              slackName: slackName,
                              bio: bio,
                            )),
                      ),
                    );
                  },
                  child: const Text(
                    "Save CV Details",
                    style: TextStyle(
                      color: AppColors.KWhite,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
