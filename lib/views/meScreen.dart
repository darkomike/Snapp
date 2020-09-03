import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MeScreen extends StatefulWidget {
  @override
  _MeScreenState createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.color,
          elevation: 0.0,
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                //TODO:
                print("Camera button is clicked");
              },
            )
          ],
        ),
        body: Container(
            child: Column(
          children: [
            Card(
              elevation: 0.0,
              child: Container(
//              height: 100,
                child: Column(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18.0), //or 15.0
                        child: Container(
                          height: 200.0,
                          width: 70.0,
//                        color: Colors.red,
                          child: Image(
                            image: AssetImage("images/image1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        "Kofi Abrefa Bentil",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "ID Abusua Enterprise",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 10, left: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            //TODO;
                            print("QR code button pressed");
                          },
                          icon: Icon(
                            Icons.select_all,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(right: 30),
                          onPressed: () {
                            //TODO;
                            print("Forward button button pressed");
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color, size: Theme.of(context).iconTheme.size,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10
            ),
            Card(
              elevation: 0.0,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18.0), //or 15.0
                        child: Container(
                          height: 200.0,
                          width: 70.0,
                          color: Colors.blue,
                        ),
                      ),
                      title: Text("Favourites", style: TextStyle(fontSize: 20),),
                      trailing: IconButton(
                        onPressed: (){
                          //TODO ;
                          print("favourite clicked");
                        },
                        icon: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color,  size: Theme.of(context).iconTheme.size,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 20),
                      child: Divider(height: 20,),
                    ),
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18.0), //or 15.0
                        child: Container(
                          height: 200.0,
                          width: 70.0,
                          color: Colors.blue,
                        ),
                      ),
                      title: Text("My Posts", style: TextStyle(fontSize: 20),),
                      trailing: IconButton(
                        onPressed: (){
                          //TODO ;
                          print("My posts clicked");
                        },
                        icon: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color,  size: Theme.of(context).iconTheme.size,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 20),
                      child: Divider(height: 20,),
                    ),
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18.0), //or 15.0
                        child: Container(
                          height: 200.0,
                          width: 70.0,
                          color: Colors.blue,
                        ),
                      ),
                      title: Text("Sticker Gallery", style: TextStyle(fontSize: 20),),
                      trailing: IconButton(
                        onPressed: (){
                          //TODO ;
                          print("Sticker gallery clicked");
                        },
                        icon: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color,  size: Theme.of(context).iconTheme.size,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 20),
                      child: Divider(height: 20,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Card(
              elevation: 0.0,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 80,
                child:  ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0), //or 15.0
                    child: Container(
                      height: 200.0,
                      width: 70.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text("Settings", style: TextStyle(fontSize: 20),),
                  trailing: IconButton(
                    onPressed: (){
                      //TODO ;
                      print("Settings clicked");
                    },
                    icon: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color,  size: Theme.of(context).iconTheme.size,),
                  ),
                ),

              ),
            )
          ],
        )));
  }
}
