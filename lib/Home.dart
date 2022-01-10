import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSections.dart';
import 'package:facebook/sections/stausSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search clicked");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Clicked chat");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonText: "live",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("GO LIve");
                },
                buttonColor: Colors.red,
              ),
              buttonTwo: headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("TakePhoto");
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButton(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Create Room");
                },
                buttonColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: dp10,
              name: "Alex",
              publishedAt: "10h 4m",
              postTitle: "",
              postImage: p3,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "1k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: dp5,
              name: "Larry",
              publishedAt: "10h 4m",
              postTitle: "",
              postImage: p1,
              showBlueTick: false,
              likeCount: "5k",
              shareCount: "1k",
              commentCount: "1k",
            ),
          ],
        ),
      ),
    );
  }
}
