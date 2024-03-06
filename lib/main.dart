import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 9;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text(
            'First Flutter Application',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("lottery winning numbers : $x")),
            Text(x > 5 ? "X is greater 5":  x.toString())
          ],
          // child: Text(
          //   "Welcome to Javatpoint",
          //   style: TextStyle(color: Colors.black, fontSize: 30.0,),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 100.0,
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            print('I am Floating Action Button');
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
