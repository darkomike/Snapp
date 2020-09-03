
import 'package:flutter/material.dart';

Widget buildButton(BuildContext context, var action){
  return  RaisedButton(
    shape: Border(
      left: BorderSide(width: 2, color: Colors.red,style: BorderStyle.solid),
      right: BorderSide(width: 2, color: Colors.red,style: BorderStyle.solid),
      top: BorderSide(width: 2, color: Colors.red,style: BorderStyle.solid),
      bottom: BorderSide(width: 2, color: Colors.red,style: BorderStyle.solid),


    ),
    elevation: 2,
    child: Text("Log In"),
    onPressed: (){
      print("Login button pressed");
    },
  );
}

Widget customRaisedButton({String label, var function, Color textColor, Color backgroundColor}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
    child: Material(  //Wrap with Material
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
      elevation: 10.0,
      color: backgroundColor,
      clipBehavior: Clip.antiAlias, // Add This
      child: MaterialButton(
        minWidth: 20.0,
        height: 35,
        color: backgroundColor,
        child: new Text(label,
            style: new TextStyle(fontSize: 16.0, color: textColor)),
        onPressed: () {
          function();
          print("$label is clicked");
        },
      ),
    ),
  );
}

Widget myListTile(BuildContext context){
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    child: Card(
      child: Row(
        children: [
          Container(

          )
        ],
      ),

    ),
  ) ;
}

Widget listTileForMoments(String name, BuildContext context ){
  return Card(

    elevation: 0.0,
    child: Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0), //or 15.0
            child: Container(
              height: 70.0,
              width: 70.0,
              color: Colors.blue,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(name, style: Theme.of(context).textTheme.headline3,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 12,),
                onPressed: (){
                  //TODO:
                },
              )
            ],
          ),

        ],
      ),
    ),
  );
}

Widget listTile1(String name , BuildContext context, double padd){
  return Container(
height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18.0), //or 15.0
          child: Container(
            height: 70.0,
            width: 70.0,
            color: Colors.blue,
          ),
        ),

        Padding(
          padding:  EdgeInsets.only(right: padd),
          child: Text(name, style: Theme.of(context).textTheme.headline3,),
        ),

        IconButton(
          icon: Icon(Icons.arrow_forward_ios, size: 12,),
          onPressed: (){
            //TODO:
          },
        ),
      ],
    ),
  );
}

Widget listTile2(String name , BuildContext context,  [double padd]){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18.0), //or 15.0
          child: Container(
            height: 70.0,
            width: 70.0,
            color: Colors.blue,
          ),
        ),
        SizedBox(width: 20,),

        Padding(
          padding:  EdgeInsets.only(right: padd),
          child: Text(name, style: Theme.of(context).textTheme.headline3,),
        ),


      ],
    ),
  );
}