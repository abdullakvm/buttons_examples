import 'package:flutter/material.dart';

class MediaqueryExample extends StatelessWidget {
  const MediaqueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    // var size = MediaQuery.sizeOf(context).height; for height only similar to width its usefull when only pne of them is requierd
    double screenwidth = size.width;
    double screenheight = size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(height: screenheight / 3, color: Colors.amber),
          Container(height: screenheight / 3, color: Colors.redAccent),
          Container(
            height: screenheight / 3,
            width: double.infinity,
            color: Colors.blueAccent,
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ), // for show text field upper the keyboard
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                );
              },
              icon: Icon(Icons.add_box_outlined),
              iconSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
