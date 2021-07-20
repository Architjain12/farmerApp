import 'dart:ui';

import 'package:farmer/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          TextFormField(
            obscureText: false,
            cursorColor: Colors.black, 
            enableSuggestions: true,
            autocorrect: false,
            style: TextStyle(
              color: Colors.black,
            ),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter Email',
              fillColor: Colors.yellow,
              hintStyle: TextStyle(color: Colors.black),
            ),
            validator: (String? value) {
              _email = value;
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            cursorColor: Colors.black, 
            enableSuggestions: false,
            autocorrect: false,
            style: TextStyle(
              color: Colors.black,
            ),
            //keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintText: 'Enter password',
              fillColor: Colors.yellow,
              hintStyle: TextStyle(color: Colors.black),
            ),
            validator: (String? value) {
              _password = value;
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (auth(_email, _password) == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
              ),
            ),
          )
      ],
    ),
        ));
  }
}

int auth(email, password) {
  return 1;
}
