import 'package:flutter/material.dart';
import 'package:they_chat_app/utils/countryCodes.dart';
import 'package:they_chat_app/views/homeScreen.dart';

MyCountryCode myCountryCode = MyCountryCode();

class LogInDialogScreen extends StatefulWidget {
  @override
  _LogInDialogScreenState createState() => _LogInDialogScreenState();
}

class _LogInDialogScreenState extends State<LogInDialogScreen> {
  String selectedRegionCode = "Ghana (+233)";

  List countryNames = myCountryCode.getCountryNames(myCountryCode.countryCodes);
  List countryCodes = myCountryCode.getCountryCodes(myCountryCode.countryCodes);

  TextEditingController controller = TextEditingController(text: '+233');

  final _mobileLoginFormKey = GlobalKey<FormState>();
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
                  Text("Region", style: Theme.of(context).textTheme.headline2),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Expanded(flex: 2, child: countryCodeDropdownMenu())
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  Text("Phone ", style: Theme.of(context).textTheme.headline2),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Container(
                    width: width * 0.5,
                    child: Form(

                      key: _mobileLoginFormKey,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headline2,
                        controller: controller,
                        maxLength: 20,
                        validator:
                            _phoneNumberValidator, // validate phone text box
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
                    _showOtherLoginOptions(
                        context); // Show the other options bottom sheet
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
    );
  }

  Widget countryCodeDropdownMenu() {
    return DropdownButton<String>(
      isExpanded: true,
      dropdownColor: Theme.of(context).backgroundColor,
      elevation: 1,
      focusColor: Colors.lightGreenAccent,
      style: TextStyle(color: Colors.lightGreenAccent[400]),
      value: selectedRegionCode,
      items: countryNames.map((value) {
        return DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        );
      }).toList(),
      onChanged: (String value) {
        int namePosition = countryNames.indexOf(value);
        String codePosition = countryCodes.elementAt(namePosition);

        print(namePosition);
        print(codePosition);

//        print( countryNames.indexOf(value));

        setState(() {
          selectedRegionCode = value;
          controller.text = codePosition + "  ";
        });
      },
    );
  }

  _nextButton() {
    print(countryNames.indexOf("Ghana (+233)"));
    if (_mobileLoginFormKey.currentState.validate()) {
//TODO:
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
                    print("Log in via Snapp Chat ID / EMAIL /VV ID ");

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                      return HomeScreen();
                    }));
                  },
                  child: Text(
                    "Log in via TheyChat ID / Email / VV ID",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Log in via FaceBook",
                  style: Theme.of(context).textTheme.bodyText2,
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
}
