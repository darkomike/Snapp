import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//        margin: EdgeInsets.symmetric(horizontal:2),
//        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
//                TODO
                print("On tap button is pressed");
              },
              onLongPress: () {
                print("On pressed is activated");

                //TODO
              },
              selected: true,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(18.0), //or 15.0
                child: Container(
                  height: 100.0,
                  width: 70.0,
                  color: Colors.red,
                  child: Image(
                    image: AssetImage("images/image1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subtitle: Text(
                "Have a nice day. Take care",
                style: Theme.of(context).textTheme.headline4,
              ),
              title: Text(
                "Prince",
                style: Theme.of(context).textTheme.headline6,
              ),
              trailing: Text(
                "09:10",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
