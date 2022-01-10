import 'package:facebook/widgets/stroyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            story: p3,
            avatar: dp1,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Alex",
            story: p5,
            avatar: dp6,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Rachel",
            story: p1,
            avatar: dp3,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Rona",
            story: p4,
            avatar: dp4,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Nick",
            story: p5,
            avatar: dp5,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Raymond",
            story: p7,
            avatar: dp7,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Allison",
            story: p8,
            avatar: dp8,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Clair",
            story: p6,
            avatar: dp9,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Romanov",
            story: p2,
            avatar: dp10,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
