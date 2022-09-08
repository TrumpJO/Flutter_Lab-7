// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/structureWidget.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StructureWidget.DEFUALT_BACKGROUND_COLOR,
      appBar: AppBar(
        title: Text("** 2nd Screen"),
        centerTitle: true,
      ),
      body: StructureWidget.formatPageWidget_Standard(
        networkImage: NetworkImage(
            "https://images.pexels.com/photos/3258236/pexels-photo-3258236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        childWidget: body(),
      ),
    );
  }

  ListView body() {
    return ListView(
      children: [
        enterInfo_msg(),
        Divider(),
      ],
    );
  }

  Container enterInfo_msg() {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      color: Colors.amber.shade200,
      child: Text(
        "Please enter your information",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight
              .bold, // fontWeight to be removed after adding fontStyle.
        ),
      ),
      alignment: Alignment.topCenter,
    );
  }
}
