import 'package:flutter/material.dart';
import 'package:they_chat_app/widgets/customWidgets.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
//        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 4,
            ),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
            chatListTile(
                context: context,
                name: 'Michael',
                message: "Don't you ever give up. Keep pushing",
                time: '6:00'),
          ],
        ),
      ),
    );
  }
}
