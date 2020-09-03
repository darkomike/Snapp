import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:they_chat_app/main.dart';
import 'package:they_chat_app/views/homeScreen.dart';
import 'package:they_chat_app/widgets/appStateNotifier.dart';

class StartUpScreen extends StatefulWidget {
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  List<String> languages = ["English US", "English UK", "Hebrews"];
  List<String> appTheme = ["Day", "Night"];
  List<String> countryCodes = ["Ghana (+233)"];
  String _selectedLanguage = "English US";
  String _selectedAppTheme = "Day";

  final _mobileLoginFormKey = GlobalKey<FormState>();




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
                                    _logInDialog(context: context);
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

  Widget countryCodeDropdownMenu() {
    String defaultValue = "Ghana (+233)";
    return DropdownButton(
      dropdownColor: Theme.of(context).backgroundColor,
      elevation: 1,
      focusColor: Colors.lightGreenAccent,
      style: TextStyle(color: Colors.lightGreenAccent[400]),
      value: defaultValue,
      items: countryCodes.map((value) {
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



  _logInDialog({BuildContext context}) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return showDialog(
      context: context,
      child: Dialog(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    //Navigate back to the page
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text("Log In Via Mobile Number",
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  children: [
                    Text("Region",
                        style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    countryCodeDropdownMenu()
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  children: [
                    Text("Phone ",
                        style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                      width: width * 0.5,
                      child: Form(
                        key: _mobileLoginFormKey,
                        child: TextFormField(
                          validator: _phoneNumberValidator, // validate phone text box
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: '0243123456',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                FlatButton(
                    onPressed: () {
                      //TODO:
                      print("Other Login Button clicked");
                      _showOtherLoginOptions(context); // Show the other options bottom sheet
                    },
                    child: Text(
                      "Other Login Options",
                      style: Theme.of(context).textTheme.bodyText2,
                    )),
                SizedBox(
                  height: height * 0.04,
                ),
                GestureDetector(
                    onTap: () {
                      //TODO:
                      print("Next button is clicked");
                      _nextButton();
                    },
                    child: Material(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            height: height * 0.08,
                            width: double.infinity,
                            child: Text("Next")),
                      ),
                    )),
                SizedBox(
                  height: height * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        "Unable to Log In?",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {

                        print("Unable to log in button is clicked");
                      },
                    ),
                    Container(
                        height: 35,
                        child: VerticalDivider(color: Colors.black87)),
                    FlatButton(
                      child: Text(
                        "More Options",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        print("More Option button is clicked");
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  _nextButton(){

    if(_mobileLoginFormKey.currentState.validate()){

    }
  }


  String _phoneNumberValidator(String value) {
    Pattern pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Phone Number';
    else
      return null;
  }

  void _showOtherLoginOptions(context) {
    double width = MediaQuery.of(context).size.width;
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
                Text(
                  "Log in via TheyChat ID / Email / VV ID",
                  style: Theme.of(context).textTheme.bodyText2,                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Log in via FaceBook",
                  style: Theme.of(context).textTheme.bodyText2,                ),
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

  void _showSignUpMethods(context) {
    double width = MediaQuery.of(context).size.width;
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
                  onTap: (){
                    //TODO:
                    print("Sign up via mobile is clicked");

                    setState(() {
                      showDialog(context: context, child: SignUpDialogScreen());
                    });
                  },
                  child: Text(
                    "Sign up via Mobile",
                    style: Theme.of(context).textTheme.bodyText2,                ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                GestureDetector(

                  onTap: (){
                    //TODO:
                    print("Sign up via Facebook is clicked");
                  },
                  child: Text(
                    "Sign up via Facebook",
                    style: Theme.of(context).textTheme.bodyText2,                ),
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


    setState(() {
      switch (value) {
        case "Day":
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateTheme(!isDark);

          print("Day");
          break;
        case "Night":
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateTheme(isDark);
          print("Night");
          break;
        default:
          break;
      }
    });
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
          _selectedAppTheme = value;
          _checkAppTheme(value);
        });
      },
    );
  }
}

class SignUpDialogScreen extends StatefulWidget {
  @override
  _SignUpDialogScreenState createState() => _SignUpDialogScreenState();
}

class _SignUpDialogScreenState extends State<SignUpDialogScreen> {


  final _formKey = GlobalKey<FormState>();
  bool _checkTermsOfService = false;
  bool _checkAgreeToLabel = false;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text("Sign up by number",
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: height * 0.04,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(

                          child: Text("Name ",
                              style: Theme.of(context).textTheme.headline2),
                        ),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(

                            width: width * 0.5,
                            child: TextFormField(

                              style: Theme.of(context).textTheme.headline2,
                              validator: _nameValidator,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Kofi Abrefa Bentil',
                              ),
                            ),
                          ),
                        ),
                        Expanded(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0), //or 15.0
                            child: Container(
                              height: 50.0,
                              width: 30.0,
                              color: Colors.red,
                              child: Icon(Icons.photo_camera) ,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text("Region",
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        countryCodeDropdownMenu()
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      children: [
                        Text("Phone ",
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Container(
                          width: width * 0.5,
                          child: TextFormField(
                            maxLength: 10,
                            style: Theme.of(context).textTheme.headline2,
                            validator: _phoneNumberValidator,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '0243123456',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Password ",
                              style: Theme.of(context).textTheme.headline2),
                        ),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.headline2,
                            obscureText: true,
                            validator: _passwordValidator,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter password',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),

              Row(
                children: [
                  Checkbox(
                    tristate: false,
                    value: _checkTermsOfService,
                    onChanged: (value){
                      //TODO:
                     setState(() {
                       _checkTermsOfService = value;
                     });
                    },
                    checkColor: Colors.lightGreenAccent[400],
                  ),
                  RichText(
                    text: TextSpan(

                      children: <TextSpan>[
                        TextSpan(text: 'Agree to ', style: Theme.of(context).textTheme.headline2, ),
                        TextSpan(text: 'Terms of Service', style: Theme.of(context).textTheme.headline1),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),

              GestureDetector(
                  onTap: () {
                    //TODO:
                    signUp();
                    print("Sign Up button is clicked");
                  },
                  child: Material(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          height: height * 0.08,
                          width: double.infinity,
                          child: Text("Sign Up")),
                    ),
                  )),


              SizedBox(
                height: height * 0.1,
              ),



            ],
          ),
        ),
      ),
    );
  }

//  _signUpDialog(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;
//    double height = MediaQuery.of(context).size.height;
//    return
//  }

  String _phoneNumberValidator(String value) {
    Pattern pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) && value.length < 10)
      return 'Enter valid phone number';
    else
      return null;
  }

  String _passwordValidator(String value){
    return  value.length < 10 ? 'Enter valid password' : null;
  }

  String _nameValidator(String value){
    return  value.length < 3 ? 'Enter name' : null;
  }

  Widget countryCodeDropdownMenu() {
    String defaultValue = "Ghana (+233)";
    return DropdownButton(
      dropdownColor: Theme.of(context).backgroundColor,
      elevation: 1,
      focusColor: Colors.lightGreenAccent,
      style: TextStyle(color: Colors.lightGreenAccent[400]),
      value: defaultValue,
      items: countryCodes.map((value) {
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

  List<String> countryCodes = ["Ghana (+233)"];

  signUp(){
    if(_formKey.currentState.validate()){

    }
  }
}

