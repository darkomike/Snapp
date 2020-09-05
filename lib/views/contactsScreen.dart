import 'package:flutter/material.dart';
import 'package:they_chat_app/widgets/customWidgets.dart';

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      margin: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            listTile2("New Friends", context, 0),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: Divider(height: 1, color: Theme.of(context).dividerTheme.color,),
            ),listTile2("Group Chats", context, 0),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: Divider(height: 1, color: Theme.of(context).dividerTheme.color,),
            ),listTile2("Tags", context, 0),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: Divider(height:1, color: Theme.of(context).dividerTheme.color,),
            ),listTile2("Official Account", context, 0),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: Divider(height:1, color: Theme.of(context).dividerTheme.color,),
            ),
          ],
        ),
      ),
    )
    );

  }
}
