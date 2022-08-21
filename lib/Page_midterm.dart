import 'package:flutter/material.dart';
import 'package:midterm_630710056/tem.dart';

class Temperature extends StatefulWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  State<Temperature> createState() => _GamePageState();
}
class _GamePageState extends State<Temperature> {
  final _controller = TextEditingController(); //รับข้อความจากหน้าจอ
  final _Tem = Temm();

  // state variable
  var _feedbackText = ''; //เก็บข้อความที่จะพิมพ์ออกทางจอ
  var _feedbackText2 = '';
  var _showTestButton = false; // การคลิกปุ่ม (ไอคอน,สี)
  var re="";
  var re1 ="";

  void Temperature1() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
   re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';
      });
    } else {
      var result = _Tem.doTem1(guess);

       re = result.toString();
      setState(() { // True
        _feedbackText = ' Celsius = ';
        _feedbackText2 = " Fahrenheit";
        _showTestButton = true;
      });
    }
  }
  void Temperature2() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
    re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';

      });
    } else {
      var result = _Tem.doTem2(guess);
      re = result.toString();
      setState(() { // True
        _feedbackText = ' Celsius = ';
        _feedbackText2 = " Kelvin";
        _showTestButton = true;
      });
    }
  }
  void Temperature3() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
    re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';

      });
    } else {
      var result = _Tem.doTem3(guess);
       re = result.toString();
      setState(() { // True
        _feedbackText = ' Fahrenheit = ';
        _feedbackText2 = " Celsius ";
        _showTestButton = true;
      });
    }
  }
  void Temperature4() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
    re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';
      });
    } else {
      var result = _Tem.doTem4(guess);
       re = result.toString();
      setState(() { // True
        _feedbackText = ' Fahrenheit = ';
        _feedbackText2 = " Kelvin ";
        _showTestButton = true;
      });
    }
  }
  void Temperature5() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
    re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';
      });
    } else {
      var result = _Tem.doTem5(guess);
       re = result.toString();
      setState(() { // True
        _feedbackText = ' Kelvin = ';
        _feedbackText2 = " Celsius ";
        _showTestButton = true;
      });
    }
  }
  void Temperature6() {
    //คลิกปุ่ม
    var guess = double.tryParse(_controller.text);
    re1 = guess.toString();
    if (guess == null) {
      // แจ้ง error

      setState(() { // True
        _feedbackText = ' Input error, please try again';
      });
    } else {
      var result = _Tem.doTem6(guess);
      var re = result.toString();
      setState(() { // True
        _feedbackText = ' Kelvin = ';
        _feedbackText2 = " Fahrenheit ";
        _showTestButton = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //กำหนดพื้นฐานหน้าต่างเว็บ
        appBar: AppBar(
          title: Text("Midterm Exam",
              style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        ),
        body: Center(
        child: Column(
        //ข้อความแนวตั้้ง-แนวนอน
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //กำหนดตำแหน่งข้อความทั้งบรรทัด

        children: [
        const Text("Temperature Converter",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(width: 10.0),
          SizedBox(height: 20.0),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),


          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature1,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
              backgroundColor: Colors.teal, //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Celsius to Fahrenheit'),

          ),
          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature2,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
                backgroundColor: Colors.teal //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Celsius to Kelvin'),

          ),
          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature3,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
                backgroundColor: Colors.teal //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Fahrenheit to Celsius'),

          ),
          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature4,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
              backgroundColor: Colors.teal, //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Fahrenheit to Kelvin'),

          ),
          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature5,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
                backgroundColor: Colors.teal, //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Kelvin to Celsius'),

          ),
          ElevatedButton(
            //ปุ่ม
            onPressed: Temperature6,
            style: OutlinedButton.styleFrom(
              //ปุ่ม
                backgroundColor: Colors.teal, //คลิกแล้วปุ่มเปลี่ยนสี
            ),
            child: const Text('Kelvin to Fahrenheit'),

          ),
          Text(re1+_feedbackText+re+_feedbackText2),

        ]
        ),
    ),
    );
  }
}
