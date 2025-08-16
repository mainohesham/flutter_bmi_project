import 'package:flutter/material.dart';
import 'package:flutters_project/component/ReusableCard.dart';
import 'package:flutters_project/component/RoundedBTN.dart';

enum Gender{
  Male,Female
}

//main screen can change (statefulWidget)
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//create ul(appBar, Body...) & Logic
class _HomeState extends State<Home>{
  final inActiveColor = Color(0xff101432);
  final activeColor = Color(0xff1f2555);
  late Gender gender = Gender.Female;
  int _height = 150;
  int _weight = 150;
  int _age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(child:
      Column(children: [
        Expanded(
            child: Row(
              children: [
                ReuseableCard(
                  color: gender == Gender.Male ? activeColor : inActiveColor,
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child:Icon(Icons.male, size: 80)),
                      Container(child: Text('Male'))
                    ]
                ),
                  onpress: (){
                    setState(() {
                      gender = Gender.Male;
                    });


                  },
                ),
                ReuseableCard(
                    color: gender == Gender.Female ? activeColor : inActiveColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child:Icon(Icons.female, size: 80)),
                        Container(child: Text('Female'))
                      ]
                    ),
                  onpress: (){
                    setState(() {
                      gender = Gender.Female;
                    });

                  },
                )
        ]
        )),
        //=============================HEIGHT==============================
        ReuseableCard(
          color: Color(0xff101432),
          myChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              child: Text('Height',style: TextStyle(fontSize:15),),
            ),
            //----------------------150cm-----------------------------
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(child: Text(_height.toString(),style: TextStyle(fontSize:60,fontWeight:FontWeight.bold),),),
              Container(child: Text('cm'))
            ],),
           //-----------------------SLIDER------------------------------
            Container(child: Slider(
                max: 220,
                min:120,
                activeColor: Color(0xFFD82051),
                inactiveColor: Colors.grey[300],
                onChanged: (double newValue) {
                  setState(() {
                    _height = newValue.toInt().round();
                  });
                },
              value: _height.toDouble(),
            ),
            )
          ],
          ),
        ),
        //===================================================================
        Expanded(
          child: Row(
            children: [
              ReuseableCard(
                color: Color(0xff101432),
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text("Weight",style: TextStyle(fontSize: 15),),),
                    Container(child: Text(_weight.toString(),style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedBTN(
                          color: Color(0xFF7A7979),
                          icon:Icons.add,
                          onpress: (){
                            setState(() {
                              _weight++;
                            });
                          },
                        ),
                        SizedBox(width: 12,),
                        RoundedBTN(
                          color: Color(0xFF7A7979),
                          icon:Icons.remove,
                          onpress: (){
                            setState(() {
                              _weight--;
                            });
                          },
                        )

                      ],
                    )
                  ],

                ),
              ),
              ReuseableCard(
                color: Color(0xff101432),
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Text("Age",style: TextStyle(fontSize: 15),),),
                      Container(child: Text(_age.toString(),style: TextStyle(fontSize: 60,fontWeight:FontWeight.bold),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedBTN(
                            color: Color(0xFF7A7979),
                            icon:Icons.add,
                            onpress: (){
                              setState(() {
                                _age++;
                              });
                            },
                          ),
                          SizedBox(width: 12,),
                          RoundedBTN(
                            color: Color(0xFF7A7979),
                            icon:Icons.remove,
                            onpress: (){
                              setState(() {
                                _age--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  )
              ),
             ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Calculate',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFD82051),
              shape: RoundedRectangleBorder(
              ),
            ),
          ),
        )
      ],)),
    );
    
  }
}






