import 'package:flutter/material.dart';
import 'package:they_chat_app/utils/countryCodes.dart';

MyCountryCode myCountryCode = MyCountryCode();

class SignUpDialogScreen extends StatefulWidget {
  @override
  _SignUpDialogScreenState createState() => _SignUpDialogScreenState();
}

class _SignUpDialogScreenState extends State<SignUpDialogScreen> {
  List countryCodes = myCountryCode.getCountryCodes(myCountryCode.countryCodes);

  TextEditingController controller = TextEditingController(text: '+233');

  List countryNames = myCountryCode.getCountryNames(myCountryCode.countryCodes);
  String selectedRegionCode = "Ghana (+233)";
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;

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
                              child: Icon(Icons.photo_camera),
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
                        Expanded(flex: 2, child: countryCodeDropdownMenu())
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
                            controller: controller,
                            maxLength: 20,
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
                            obscureText: hidePassword,
                            validator: _passwordValidator,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: hidePassword
                                  ? IconButton(
                                      icon: Icon(Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          hidePassword = false;
                                        });
                                      },
                                    )
                                  : IconButton(
                                      icon: Icon(Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          hidePassword = true;
                                        });
                                      },
                                    ),
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
                    onChanged: (value) {
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
                        TextSpan(
                          text: 'Agree to ',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        TextSpan(
                            text: 'Terms of Service',
                            style: Theme.of(context).textTheme.headline1),
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

  String _phoneNumberValidator(String value) {
    Pattern pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) && value.length < 10)
      return 'Enter valid phone number';
    else
      return null;
  }

  String _passwordValidator(String value) {
    return value.length < 10 ? 'Enter valid password' : null;
  }

  String _nameValidator(String value) {
    return value.length < 3 ? 'Enter name' : null;
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
        controller.text = codePosition + "  ";
        setState(() {
          selectedRegionCode = value;
        });
      },
    );
  }

  signUp() {
    if (_formKey.currentState.validate()) {}
  }
}
