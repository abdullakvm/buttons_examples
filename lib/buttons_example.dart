import 'package:flutter/material.dart';

class ButtonsExample extends StatefulWidget {
  const ButtonsExample({super.key});

  @override
  State<ButtonsExample> createState() => _ButtonsExampleState();
}

class _ButtonsExampleState extends State<ButtonsExample> {
  bool cvalue = true;
  bool? istoggled = true;
  String? radioop;
  String? dropvalue;
  String? listdropvalue;
  List<String> countries = [
    "India",
    "United States",
    "Canada",
    "Australia",
    "United Kingdom",
    "Germany",
    "France",
    "Japan",
    "China",
    "Brazil",
    "South Africa",
    "Italy",
    "Mexico",
    "Russia",
    "Saudi Arabia",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("settings")),
              PopupMenuItem(child: Text("likes")),
              PopupMenuItem(child: Text("menu")),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: cvalue,
            onChanged: (value) {
              cvalue = value!;
              setState(() {});
            },
          ),
          Switch(
            value: istoggled!,
            onChanged: (value) {
              istoggled = value;
              setState(() {});
            },
          ),
          Radio(
            value: "red",
            groupValue: radioop,
            onChanged: (value) {
              radioop = value;
              setState(() {});
            },
          ),
          Radio(
            value: "yellow",
            groupValue: radioop,
            onChanged: (value) {
              radioop = value;
              setState(() {});
            },
          ),
          ExpansionTile(
            title: Text("Expansion tile"),
            children: [Container(color: Colors.red, height: 200)],
          ),
          DropdownButton(
            value: dropvalue,
            hint: Text("DropdownButton"),
            items: [
              DropdownMenuItem(value: "1", child: Text("one")),
              DropdownMenuItem(value: "2", child: Text("two")),
              DropdownMenuItem(value: "3", child: Text("three")),
            ],
            onChanged: (value) {
              dropvalue = value;
              setState(() {});
            },
          ),
          //making using list.generate
          DropdownButton(
            value: listdropvalue,
            hint: Text("DropdownButton"),
            items: List.generate(
              countries.length,
              (index) => DropdownMenuItem(
                value: countries[index],
                child: Text(countries[index]),
              ),
            ),
            onChanged: (value) {
              listdropvalue = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
