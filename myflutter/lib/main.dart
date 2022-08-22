import 'package:flutter/material.dart';
import 'FoodMenu.dart';
void main() {
  runApp(MyApp());
}
//สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.lime),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา","500",),
    FoodMenu("ไก่ทอด","500",),
    FoodMenu("ส้มตำ","60",),
    FoodMenu("ส้ม","60",)
  ];

  //แสดงข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //หัวเมนู
          title: Text(
            "เลือกเมนูอาหาร",
            style: TextStyle(fontSize: 30),
          appBar: AppBar(
          title: Text("เลือก"),
          ),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("ราคา" + food.price + "บาท"),
                onTap: (){
                  print("คุณเลือกอาหารชื่อว่าอะไร"+food.name);
                },
              );
            }));
          body: Column(children: [],)
    );
  }
}