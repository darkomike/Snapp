import 'package:flutter/material.dart';

class CustomizeBottomNavigator extends StatefulWidget {
  @override
  _CustomizeBottomNavigatorState createState() => _CustomizeBottomNavigatorState();
}

class _CustomizeBottomNavigatorState extends State<CustomizeBottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: (){

          })
        ],
      ),
    );
  }
}
