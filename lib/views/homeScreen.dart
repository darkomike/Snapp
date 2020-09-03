import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:they_chat_app/views/chatsScreen.dart';
import 'package:they_chat_app/views/contactsScreen.dart';
import 'package:they_chat_app/views/discoverScreen.dart';
import 'package:they_chat_app/views/meScreen.dart';
import 'package:they_chat_app/widgets/customizeNavigator.dart';
import 'package:provider/provider.dart';
import 'package:they_chat_app/widgets/appStateNotifier.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedPage = 0;
  String _title;

  var date = TimeOfDay.now();

  List<Widget> _pageOptions = [
   ChatsScreen(),
    ContactsScreen(),
    DiscoverScreen(),
    MeScreen()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _title = "Chats";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBody: false,
//      backgroundColor: Colors.white70,
      appBar: appBarCheck(_title, context),
      body: _pageOptions[_selectedPage],

      bottomNavigationBar: ClipRRect(

        borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft:Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          selectedItemColor: Colors.lightGreenAccent[400],
          elevation: 4,
          selectedFontSize: 18,
          showUnselectedLabels: true,
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          iconSize: 35,
          currentIndex: _selectedPage,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
//            activeIcon: Icon(Icons.chat_bubble_outline, color: Colors.lightGreenAccent[400],),
                icon: Icon(Icons.message),
                title: Text("Chats")),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), title: Text("Contacts")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                title: Text("Discover")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Me")),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedPage = index;
      switch(index) {
        case 0: { _title = 'Chats'; }
        break;
        case 1: { _title = 'Contacts'; }
        break;
        case 2: { _title = 'Discover'; }
        break;
        case 3: {
          _title = 'Me';


        }
        break;
      }
    });
  }

  Widget appBarForThree(String title, BuildContext context){
    return AppBar(
      elevation: 0.0,
        backgroundColor: Theme.of(context).appBarTheme.color,
      title: Text(
        title,
style: Theme.of(context).textTheme.overline,
//          style: TextStyle(color: Colors.black87),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
//              color: Colors.black87,
          ),
          onPressed: () {
            print("Search button is pressed");
          },
        ),
        IconButton(
          padding: EdgeInsets.only(right: 15),
          icon: Icon(
            Icons.add_circle_outline,
//              color: Colors.black87,
          ),
          onPressed: () {
            print("Add button is pressed");
          },
        ),
        Switch(
          value: Provider.of<AppStateNotifier>(context, listen: false).isDarkModeOn ,
          onChanged: (boolVal){
            Provider.of<AppStateNotifier>(context, listen: false).updateTheme(boolVal);
          },
        )
      ],
    );
  }



  Widget appBarCheck(String title, BuildContext context){
    var appBar;
    if (_selectedPage < 3 ){
      appBar= appBarForThree(title, context);
    }
    return appBar;
  }
}
