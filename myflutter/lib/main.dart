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
        title: Text("Hello Flutter ค่ะ"),
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: Text(
            "hi",
            style: TextStyle(fontSize: 50, color: Colors.brown),
          ),
        ),
      ),
      body: Text("สวัสดี"),
    ),
    theme: ThemeData(primarySwatch: Colors.lime),
  );




      theme: ThemeData(primarySwatch: Colors.lime),
    );
  }
} 
}