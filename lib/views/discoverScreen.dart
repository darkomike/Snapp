import 'package:flutter/material.dart';
import 'package:they_chat_app/widgets/customWidgets.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: (){
                  print("Moment is tapped");
                  //TODO:
                },
                child: listTileForMoments("Moments", context)),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
                onTap: (){
                  print("Scan is tapped");
                  //TODO:
                },
                child: Card(elevation: 0.0, child: listTile1('Scan', context, 100))),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Divider(
                height: 10,
              ),
            ),

            GestureDetector(
                onTap: (){
                  print("Echo is tapped");
                  //TODO:
                },
                child: Card(elevation: 0.0, child: listTile1('Echo', context, 100))),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Divider(
                height: 10,
              ),
            ),

            GestureDetector(
                onTap: (){
                  print("Search is tapped");
                  //TODO:
                },
                child: Card(elevation: 0.0, child: listTile1('Search', context, 70))),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Divider(
                height: 10,
              ),
            ), GestureDetector(
                onTap: (){
                  print("People Nearby is tapped");
                  //TODO:
                },
                child: Card(elevation: 0.0, child: listTile1('People', context, 80))),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Divider(
                height: 10,
              ),
            ), GestureDetector(
                onTap: (){
                  print("Mini Programs is tapped");
                  //TODO:
                },
                child: Card(elevation: 0.0, child: listTile1('Mini Programs', context, 40))),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Divider(
                height: 10,
              ),
            ),


          ],
        ),
      )),
    );
  }
}

//
//ListTile(
//leading:  ClipRRect(
//borderRadius: BorderRadius.circular(18.0), //or 15.0
//child: Container(
//height: 200.0,
//width: 70.0,
//color: Colors.blue,
//),
//),
//title: Text("Moments"),
//trailing:  Container(
//padding: EdgeInsets.only(top: 10),
//child: Row(
//mainAxisAlignment: MainAxisAlignment.end,
//
//children: [
//Container(
//height: 40.0,
//width: 40.0,
//decoration: BoxDecoration(
//color: Colors.blue,
//borderRadius: BorderRadius.circular(10)
//),
//),
//IconButton(
//icon: Icon(Icons.arrow_forward_ios, size: 12,),
//onPressed: (){
////TODO:
//},
//)
//],
//),
//),
//),
