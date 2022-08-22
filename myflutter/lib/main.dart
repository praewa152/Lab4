import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Text("Hi every one"),
                Text("Hi every one"),
                Text("Hi every one"),
                Text("Hi every one"),
                Text("Hi every one"),
                Text("Hi every one"),
                Text("Hi every one"),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lime),
    );
  }
}