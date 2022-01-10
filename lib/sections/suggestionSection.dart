import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("MOre CLicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: dp3,
                  name: "Lora Maze",
                  mutualFriends: "5 Mutual Friends",
                  addFriend: () {
                    print("Friend Add");
                  },
                  removeFriends: () {
                    print("REmove suggestion");
                  },
                ),
                SuggestionCard(
                  avatar: dp4,
                  name: "Glory Grace",
                  mutualFriends: "4 Mutual Friends",
                  addFriend: () {
                    print("Friend Add");
                  },
                  removeFriends: () {
                    print("REmove suggestion");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
