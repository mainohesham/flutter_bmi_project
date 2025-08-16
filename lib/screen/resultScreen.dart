
import 'package:flutter/material.dart';
import 'package:flutters_project/component/ReusableCard.dart';

class ResultScreen extends StatefulWidget {
   final String bmiResult;
   final String result;
   final String feedback1;
   final String feedback2;

ResultScreen({required this.bmiResult,required this.result,required this.feedback1,required this.feedback2});
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85,vertical:15),
            child: Container(
              child: Text("Your Result",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            ),
          ),
          ReuseableCard(
            color: Color(0xff101432),
            myChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(widget.result,style: TextStyle(
                    fontSize: 25,
                    color: Colors.green
                  ),),
                ),
               Text(widget.bmiResult,style: TextStyle(
                 fontSize: 60,
                 fontWeight: FontWeight.bold
               ),),
                Column(
                  children: [
                    Text(widget.feedback1, style: TextStyle(
                      fontSize: 15,
                    ),),
                    Text(widget.feedback2, style: TextStyle(
                      fontSize: 15
                    ),)
                  ],
                )
              ],
            ),
          ),

          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          },
              child: Text('Re-Calculate'.toUpperCase(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD82051),
                shape: RoundedRectangleBorder(),
                minimumSize: Size(50, 50)
              )

          )],
      ),
    );
  }
}
