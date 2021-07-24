import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imagePath = "";
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker & Image Cropper"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green.shade700),
                ),
                onPressed: () async {
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        
                      });
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
                    if (croppedFile != null){
                      setState(() {
                        imagePath = croppedFile.path;
                      });
                    }
                  }
                },
                child: Text("Select Image"),
              ),
            ),
            imagePath != ""
                ? Container(
                  height: 500,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.file(File(imagePath)),
                  )
                : Container(child: Text("No image is selected"),),
          ],
        ),
      ),
    );
  }
}