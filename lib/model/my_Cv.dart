import 'package:flutter/material.dart';

class MyCV {
  String year;
  String title;
  String decription;
  bool isVisible;
  MyCV(
      {required this.decription, required this.title, required this.year, required this.isVisible});
}

List<MyCV> myCV = [];

// class MyCVDetails {
//   static String cvTitle() {
//     return myCV[index].title;
//   }

//   static String cvDescription() {
//     return myCV[index].decription;
//   }

//   static String cvYear() {
//     return myCV[index].year;
//   }

//   static bool cvisVisible() {
//     return myCV[index].isVisible;
//   }


// year: 2023,
// title: "Hng Stage One Task",
// decription: "I am an intern in the HNGx cohort mobile track./n "
//     "My initial task involved building an app that,/n"
//     "upon loading, displays a user interface featuring my Slack profile picture,/n"
//     " Slack username, and a button that, when pressed, redirects to my GitHub profile./n"
//     " During this task, I gained valuable experience in implementing packages."
