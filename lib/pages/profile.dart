import 'dart:io';
import 'package:farmer/pages/signUp.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:farmer/widget/changeTheme.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'data.dart';
//import 'package:farmer/pages/imageUpload.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}
//final personDetails = await SharedPreferences.getInstance();

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // Scaffold(
    //   appBar: AppBar(
    //     actions: [
    //       ChangeThemeButtonWidget(),
    //     ],
    //   ),
    //   body: SafeArea(
    //       child: Column(
    //     children: [
    //       Padding(
    //         padding:
    //             const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             CircleAvatar(
    //               radius: MediaQuery.of(context).size.width * 0.15,
    //               backgroundImage: AssetImage(MyProfileImagePath),
    //             ),
    //             Text("data1      data2       data3")
    //           ],
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20, left: 20.0),
    //         child: Row(
    //           children: [
    //             Text("$MyName"),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(left: 20.0),
    //         child: Row(
    //           children: [
    //             Text("$MyLocation"),
    //           ],
    //         ),
    //       ),
    //       ElevatedButton(
    //           onPressed: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(builder: (context) => EditPage()),
    //             );
    //           },
    //           child: Text("Edit Button"))
    //     ],
    //   )),
    // );
  }
}

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final formKey = GlobalKey<FormState>();

  String imagePath = "";

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container();
    //SafeArea(
    //     child: Scaffold(
    //   appBar: AppBar(
    //     title: Text("Edit personal detail"),
    //   ),
    //   body: Form(
    //     key: formKey,
    //     child: Column(
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.all(Radius.circular(90)),
    //           child: Container(
    //             height: 90,
    //             width: 90,
    //             child: InkWell(
    //                 onTap: () async {
    //                   final XFile? image =
    //                       await _picker.pickImage(source: ImageSource.gallery);
    //                   setState(() {});
    //                   if (image != null) {
    //                     File? croppedFile = await ImageCropper.cropImage(
    //                       sourcePath: image.path,
    //                       aspectRatioPresets: [
    //                         CropAspectRatioPreset.square,
    //                         CropAspectRatioPreset.ratio3x2,
    //                         CropAspectRatioPreset.original,
    //                         CropAspectRatioPreset.ratio4x3,
    //                         CropAspectRatioPreset.ratio16x9
    //                       ],
    //                       androidUiSettings: AndroidUiSettings(
    //                         toolbarTitle: 'Cropper',
    //                         toolbarColor: Colors.green[700],
    //                         toolbarWidgetColor: Colors.white,
    //                         activeControlsWidgetColor: Colors.green[700],
    //                         initAspectRatio: CropAspectRatioPreset.original,
    //                         lockAspectRatio: false,
    //                       ),
    //                       iosUiSettings: IOSUiSettings(
    //                         minimumAspectRatio: 1.0,
    //                       ),
    //                     );
    //                     if (croppedFile != null) {
    //                       setState(() {
    //                         imagePath = croppedFile.path;
    //                       });
    //                     }
    //                   }
    //                 },
    //                 child: MyProfileImagePath == ""
    //                     ? Icon(
    //                         Icons.add_a_photo,
    //                         size: 90,
    //                       )
    //                     : Image.file(
    //                         File(MyProfileImagePath),
    //                       )
    //                 //Container(height: 100, width:200, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagePath))),)//CircleAvatar(backgroundImage: AssetImage(imagePath),minRadius: 0,)//Image.file(File(imagePath),)
    //                 ),
    //           ),
    //         ),
    //         Container(
    //           alignment: Alignment.centerLeft,
    //           child: Text("Name",style: GoogleFonts.roboto(
    //                       textStyle: Theme.of(context).textTheme.subtitle1)),
    //         ),
    //         TextFormField(
    //           initialValue: "$MyName",
    //           onSaved: (value) {
    //             MyName = value!;
    //           },
    //         ),
    //         Container(
    //           alignment: Alignment.centerLeft,
    //           child: Text("Mobile Number",style: GoogleFonts.roboto(
    //                       textStyle: Theme.of(context).textTheme.subtitle1),),
    //         ),
    //         TextFormField(
    //           initialValue: "$MyMobileNumber",
    //           onSaved: (value) {
    //             MyMobileNumber = value!;
    //           },
    //         )
    //       ],
    //     ),
    //   ),
    // ));
  }
}
