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
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Enter Email'),
          validator: (String? value) {
            _email = value;
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'Enter password'),
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
                if (_formKey.currentState!.validate()) {
                  if (auth(_email, _password) == 1) {}
                }
              },
            ),
          ),
        )
      ],
    ));
  }
}

int auth(email, password) {
  return 1;
}

