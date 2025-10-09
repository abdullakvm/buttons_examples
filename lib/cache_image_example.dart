import 'dart:io';
import 'dart:typed_data';


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class CacheimageExample extends StatefulWidget {
  const CacheimageExample({super.key});

  @override
  State<CacheimageExample> createState() => _CacheimageExampleState();
}

class _CacheimageExampleState extends State<CacheimageExample> {
  String? imagepath;
  Uint8List? byteimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://images.pexels.com/photos/34031236/pexels-photo-34031236.jpeg",
              height: 200,
              width: 200,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            // share plus for sharing files image anything
            ElevatedButton(
              onPressed: () {
                SharePlus.instance.share(
                  ShareParams(text: 'check out my website https://example.com'),
                );
              },
              child: Text("Share PLus"),
            ),

            SizedBox(height: 40),

            // image picker from gallery
            ElevatedButton(
              onPressed: () async {
                final ImagePicker picker = ImagePicker();
                // Pick an image.
                final XFile? image = await picker.pickImage(
                  source: ImageSource.camera,
                );
                // set the imge to the variable

                //   if (image != null) {
                //     imagepath = image.path;
                //     setState(() {});
                //   }

                // for chrome
                if (image != null) {
                  byteimage = await image.readAsBytes();
                  setState(() {
                    
                  });
                }
              },
              child: Text("pick image"),
            ),

            SizedBox(height: 30),

            // show image in the ui
            if (imagepath != null && !kIsWeb) Image.file(File(imagepath!)),  // when not run in web this button shows
            if(byteimage != null && kIsWeb)
            Image.memory(byteimage!)
          ],
        ),
      ),
    );
  }
}
