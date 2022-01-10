import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          createRoomButton(),
          Avatar(
            displayImage: dp6,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp10,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp2,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp3,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp7,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp4,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp5,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp8,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp9,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dp1,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlineButton.icon(
        onPressed: () {
          print("Create Room");
        },
        shape: StadiumBorder(),
        borderSide: BorderSide(
          color: Colors.lightBlue,
        ),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
