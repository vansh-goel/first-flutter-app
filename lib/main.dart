// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(1);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("~ hello ~"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          leading: Icon(Icons.menu_rounded),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logout_rounded))
          ],
        ),
        backgroundColor: Colors.amber[200],
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  "hello World",
                  style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'monospace', fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.rocket_launch_outlined, color: Colors.black54, size: 50,
                )
                ]
              )
            )
          ),
        ),
    );
  }
}