import 'package:flutter/material.dart';
//สร้างคอนเทรนเนอร์ต้นแบบ
class MoneyBox extends StatelessWidget {

  String title;//เมนู
  double amount;
  Color color;
  double size;

MoneyBox(this.title,this.amount,this.color,this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10)),
                height: size,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        amount.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              );

  }
} 
  155  
giftt/flutter_application_1/lib/main.dart
@@ -1,5 +1,5 @@
import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
@@ -37,150 +37,15 @@ class _MyHomePageState extends State<MyHomePage> {
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ยอดคงเหลือ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "11500",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              //2
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายรับ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "150",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
                SizedBox(height: 10,),
              //3
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "รายจ่าย",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "60",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              //4
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "หนี้",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        "80",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              /* Container(
                 padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.lightBlue,borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text("รายรับ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("500",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container( padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text("รายจ่าย",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("1150",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ) */
            children: 
            [
              MoneyBox("ยอดคงเหลือ", 12000, Colors.yellow, 120),
              SizedBox(height: 5,),
              MoneyBox("รายรับ", 1200, Colors.green, 80),
              SizedBox(height: 5,),
              MoneyBox("รายจ่าย", 12000, Colors.red, 80),
              SizedBox(height: 5,),
              MoneyBox("ค้างชำระเงิน", 128, Colors.pink, 80),
            ],
          ),
        ));
  }
}