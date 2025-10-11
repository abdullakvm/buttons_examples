import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiImagePickerEx extends StatefulWidget {
  const MultiImagePickerEx({super.key});

  @override
  State<MultiImagePickerEx> createState() => _MultiImagePickerExState();
}

class _MultiImagePickerExState extends State<MultiImagePickerEx> {
  List<XFile> pickedimgae = [];
  List<Uint8List> convertedimage = [];  // converted memeory byte stored here only for chrome

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ImagePicker picker = ImagePicker();
          pickedimgae = await picker.pickMultiImage();

          // for loop used for run in chrome used for conversion
          for (int i = 0; i < pickedimgae.length; i++) {
            convertedimage.add(await pickedimgae[i].readAsBytes());
          }
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: GridView.builder(
        itemCount: pickedimgae.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) =>
            // Image.file(File(pickedimgae[index].path)),   // for run on emulator
            Image.memory(convertedimage[index])
      ),
    );
  }
}
