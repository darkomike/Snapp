import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:they_chat_app/utils/countryCodes.dart';
import 'package:they_chat_app/views/homeScreen.dart';
import 'package:they_chat_app/views/logInDialogScreen.dart';
import 'package:they_chat_app/views/signInDialogScreen.dart';
import 'package:they_chat_app/widgets/appStateNotifier.dart';

MyCountryCode myCountryCode = MyCountryCode();


class StartUpScreen extends StatefulWidget {
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  List<String> languages = ["English US", "English UK", "Hebrews"];
  List<String> appTheme = ["Day", "Night"];


  String _selectedLanguage = "English US";
  String _selectedAppTheme = "Day";



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  'images/image1.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(
                bottom: height * 0.08,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          setAppTheme(),
                          DropdownButton(
                            dropdownColor: Theme.of(context).backgroundColor,
                            style: Theme.of(context).textTheme.bodyText2,
                            value: _selectedLanguage,
                            items: languages.map((value) {
                              return DropdownMenuItem(
                                child: Row(
                                  children: [
                                    Text(value),
                                  ],
                                ),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (String value) {
                              setState(() {
                                _selectedLanguage = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                          child: Material(
                              //Wrap with Material
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 20.0,
                              shadowColor: Colors.black87,
                              color: Colors.lightGreenAccent[400],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: GestureDetector(
                                onTap: () {
                                  //TODO: move to login dialog ...
                                  print("Log In button is clicked");

//                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
//                                    return HomeScreen();
//                                  }) );

                                  setState(() {
                                    showDialog(context: context, child: LogInDialogScreen());
                                  });


                                },
                                child: Container(
                                  width: width * 0.30,
                                  alignment: Alignment.center,
                                  height: height * 0.06,
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: width * 0.32,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                          child: Material(
                              //Wrap with Material
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              elevation: 20.0,
                              shadowColor: Colors.black87,
                              color: Colors.white,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: GestureDetector(
                                onTap: () {
                                  //TODO: move to Sign Up page ...
                                  print("Sign Up button is Clicked");
//                                  setState(() {
//                                    showDialog(context: context, child: SignUpDialogScreen());
//                                  });

                                  _showSignUpMethods(context);
                                },
                                child: Container(
                                  width: width * 0.30,
                                  alignment: Alignment.center,
                                  height: height * 0.06,
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.lightGreenAccent[400],
                                        fontSize: 18),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget languagesDropdownMenu() {
    String defaultValue = "Languages";
    return DropdownButton(
      value: defaultValue,
      items: languages.map((value) {
        return DropdownMenuItem(
          child: Row(
            children: [
              Text(value),
            ],
          ),
          value: value,
        );
      }).toList(),
      onChanged: (String value) {},
    );
  }







  void _showSignUpMethods(context) {
//    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        ),
        elevation: 5,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.only(top: 15),
            height: 200,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //TODO:
                    print("Sign up via mobile is clicked");

                    setState(() {
                      showDialog(context: context, child: SignUpDialogScreen());
                    });
                  },
                  child: Text(
                    "Sign up via Mobile",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    //TODO:
                    print("Sign up via Facebook is clicked");
                  },
                  child: Text(
                    "Sign up via Facebook",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  color: Colors.black12,
                  width: double.infinity,
                  height: 10,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                FlatButton(
                  child: Text(
                    "Cancel",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onPressed: () {
                    Navigator.of(context);
                    print("Cancel button clicked");
                  },
                )
              ],
            ),
          );
        });
  }

  _checkAppTheme(String value) {
    bool isDark =
        Provider.of<AppStateNotifier>(context, listen: false).isDarkModeOn;

    switch (value) {
      case "Day":
        isDark = false;
        setState(() {
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateTheme(isDark);
        });
        print("Day");
        break;
      case "Night":
        isDark = true;
        setState(() {
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateTheme(isDark);
        });
        print("Night");
        break;
      default:
        break;
    }
  }

  Widget setAppTheme() {
    return DropdownButton(
      style: Theme.of(context).textTheme.headline2,
      dropdownColor: Theme.of(context).backgroundColor,
      value: _selectedAppTheme,
      items: appTheme.map((value) {
        return DropdownMenuItem(
          child: Row(
            children: [Text(value)],
          ),
          value: value,
        );
      }).toList(),
      onChanged: (String value) {
        //TODO: to change the app theme
        setState(() {
          _checkAppTheme(value);
        });
      },
    );
  }
}

