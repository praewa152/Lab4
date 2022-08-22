import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
@@ -11,5 +17,9 @@ void main() {
    ),
    theme: ThemeData(primarySwatch: Colors.lime),
  );
  runApp(app);
}




  }
} 