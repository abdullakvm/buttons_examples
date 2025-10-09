import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefenceExample extends StatefulWidget {
  const SharedPrefenceExample({super.key});

  @override
  State<SharedPrefenceExample> createState() => _SharedPrefenceExampleState();
}

class _SharedPrefenceExampleState extends State<SharedPrefenceExample> {
  TextEditingController namecontroller = TextEditingController();
  String? enteredname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Name"),
              controller: namecontroller,
            ),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();

                await prefs.setString("name", namecontroller.text);
              },
              child: Text("save"),
            ),
            Text("Stored Data >> $enteredname"),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                enteredname = prefs.getString("name");
                setState(() {
                  
                });
              },
              child: Text("Get"),
            ),
          ],
        ),
      ),
    );
  }
}
