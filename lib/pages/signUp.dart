import 'package:farmer/pages/imageUpload.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'homee.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

String name = "";
String email = "";
String phineNumber = "";
String password = "";
String confirmPassword = "";
bool eye1 = false;
bool eye2 = false;

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  String imagePath = "";
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Welcome to Fasal App",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("SingUp to enjoy features"),
                ),
                Container(height: 90,width: 90,//decoration: BoxDecoration(image: DecorationImage(image: imagePath==""? AssetImage("asset/aa.jpg"): AssetImage(imagePath)),borderRadius: BorderRadius.all(Radius.circular(60))) ,
                  child: InkWell(
                      onTap: () async {
                        final XFile? image =
                            await _picker.pickImage(source: ImageSource.gallery);
                        setState(() {});
                        if (image != null) {
                          File? croppedFile = await ImageCropper.cropImage(
                            sourcePath: image.path,
                            aspectRatioPresets: [
                              CropAspectRatioPreset.square,
                              CropAspectRatioPreset.ratio3x2,
                              CropAspectRatioPreset.original,
                              CropAspectRatioPreset.ratio4x3,
                              CropAspectRatioPreset.ratio16x9
                            ],
                            androidUiSettings: AndroidUiSettings(
                              toolbarTitle: 'Cropper',
                              toolbarColor: Colors.green[700],
                              toolbarWidgetColor: Colors.white,
                              activeControlsWidgetColor: Colors.green[700],
                              initAspectRatio: CropAspectRatioPreset.original,
                              lockAspectRatio: false,
                            ),
                            iosUiSettings: IOSUiSettings(
                              minimumAspectRatio: 1.0,
                            ),
                          );
                          if (croppedFile != null) {
                            setState(() {
                              imagePath = croppedFile.path;
                            });
                          }
                        }
                      },
                      child: imagePath == ""
                          ? Icon(
                              Icons.add_a_photo,
                              size: 60,
                            )
                          : Image.file(
                              File(imagePath),
                            )
                       //Container(height: 100, width:200, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagePath))),)//CircleAvatar(backgroundImage: AssetImage(imagePath),minRadius: 0,)//Image.file(File(imagePath),)
                      ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter yout name",
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter correct name";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter yout email",
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.contains('@') == false) {
                      return "Enter correct email";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if (value!.isEmpty &&
                        !RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return "Enter Phone Number";
                    } else {
                      if ((value[0] == '0' && value.length != 11) ||
                          (value[0] != '0' && value.length != 10)) {
                        return "Enter correct Phone Number";
                      }
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: eye1 ? false : true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      icon: eye1
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          eye1 = !eye1;
                        });
                      },
                    ),
                    labelText: 'Password',
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Reenter password';
                    } else {
                      if (password != confirmPassword) {
                        return 'Password does not match';
                      } else {
                        return null;
                      }
                    }
                  },
                  keyboardType: TextInputType.text,
                  obscureText: eye2 ? false : true,
                  onChanged: (value) {
                    setState(() {
                      confirmPassword = value;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      icon: eye2
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          eye2 = !eye2;
                        });
                      },
                    ),
                    labelText: 'Password',
                  ),
                ),
              ],
            )),
        bottomNavigationBar: InkWell(
          child: Text(
            "Submit",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          onTap: () {
            if (formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }
          },
        ),
      ),
    );
  }
}
