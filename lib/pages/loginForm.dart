import 'dart:ui';
import 'package:farmer/pages/data.dart';
import 'package:farmer/pages/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool eye = false;

  @override
  Widget build(BuildContext context) {
    String? _email;
    String? _password;
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Welcome Back!",
                    style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headline1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Login to your Upaja",
                      style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      textAlign: TextAlign.center),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Email';
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    labelText: 'E-mail'),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: eye ? false : true,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    icon: eye
                        ? Icon(Icons.remove_red_eye)
                        : Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        eye = !eye;
                      });
                    },
                  ),
                  labelText: 'Password',
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    child: Text("Submit",style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText1)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (auth(_email, _password) == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      }
                    },
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text("Don't have an account? SignUp",style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText1)),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
              )
            ],
          ),
        ));
  }
}

int auth(email, password) {
  setFirstLogin();
  return 1;
}

setFirstLogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('FirstLogin', false);
}
