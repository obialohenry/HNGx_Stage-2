import 'package:flutter/material.dart';
import 'package:hngx_stage_2/utils/colors.dart';
import 'package:hngx_stage_2/utils/widgets.dart';
import 'package:hngx_stage_2/model/my_Cv.dart';
import 'edit_screen.dart';

class MyPersonalAndCvInformation extends StatefulWidget {
  MyPersonalAndCvInformation({
    Key? key,
    required this.name,
    required this.bio,
    required this.githubProfile,
    required this.slackName,
  }) : super(key: key);
  static const id = "MyPersonalAndCvInformation";
  String name;
  String slackName;
  String githubProfile;
  String bio;

  @override
  State<MyPersonalAndCvInformation> createState() => _MyPersonalAndCvInformationState();
}

class _MyPersonalAndCvInformationState extends State<MyPersonalAndCvInformation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    name = widget.name;
    bio = widget.bio;
    githubProfile = widget.githubProfile;
    slackName = widget.slackName;
  }

  String text = "Add projects to your CV by clicking on the Edit Projects button";
  late String name;
  late String slackName;
  late String githubProfile;
  late String bio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KScaffoldBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.KEditButton,
                    elevation: 10.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => EditPage()),
                      ),
                    );
                  },
                  child: const Text(
                    "Edit CV",
                    style: TextStyle(color: AppColors.KWhite),
                  ),
                ),
              ),
              SizedBox(
                height: 315.0,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (MediaQuery.sizeOf(context).width / 3),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "lib/images/IMG-20220626-WA0006.jpg",
                          ),
                        ),
                      ),
                    ),
                    addHorizontalDivider(10.0),
                    SizedBox(
                      width: (MediaQuery.sizeOf(context).width / 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NAME: $name",
                            style: const TextStyle(
                              color: AppColors.KWhite,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: (MediaQuery.sizeOf(context).width / 2),
                            child: const Divider(
                              color: AppColors.KDivider,
                            ),
                          ),
                          Text(
                            "SLACK NAME: $slackName",
                            style: const TextStyle(
                              color: AppColors.KWhite,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: (MediaQuery.sizeOf(context).width / 2),
                            child: const Divider(
                              color: AppColors.KDivider,
                            ),
                          ),
                          Text(
                            githubProfile,
                            style: const TextStyle(
                              color: AppColors.KWhite,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: (MediaQuery.sizeOf(context).width / 2),
                            child: const Divider(
                              color: AppColors.KDivider,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "BIO",
                              style: const TextStyle(
                                color: AppColors.KBioText,
                              ),
                              children: [
                                TextSpan(
                                  text: ": $bio",
                                  style: const TextStyle(
                                    color: AppColors.KWhite,
                                  ),
                                ),
                              ],
                            ),
                            style: const TextStyle(
                              color: AppColors.KWhite,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: (MediaQuery.sizeOf(context).width / 2),
                            child: const Divider(
                              color: AppColors.KDivider,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              addVerticalDivider(20.0),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "PROJECTS",
                  style: TextStyle(
                    color: AppColors.KWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              addVerticalDivider(20.0),
              if (myCV.isEmpty)
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: AppColors.KGrey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              if (myCV.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    itemCount: myCV.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      String year = myCV[index].year;
                      String title = myCV[index].title;
                      String description = myCV[index].decription;
                      bool isVisible = myCV[index].isVisible;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SizedBox(
                          height: 200.0,
                          width: MediaQuery.sizeOf(context).width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width -
                                    (MediaQuery.sizeOf(context).width / 3),
                                child: Column(
                                  
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                        year,
                                        style: const TextStyle(
                                          color: AppColors.KGrey,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    addVerticalDivider(
                                      10.0,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                        title,
                                        style: const TextStyle(
                                          color: AppColors.KWhite,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    addVerticalDivider(
                                      10.0,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Text(
                                        maxLines: 9,
                                        description,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          color: AppColors.KGrey,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    myCV.remove(
                                      myCV[index],
                                    );
                                  });
                                },
                                child: Visibility(
                                  visible: isVisible,
                                  child: const Icon(
                                    Icons.delete,
                                    color: AppColors.KBioText,
                                    size: 35.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
