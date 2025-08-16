import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff070912),
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.white)
        ),
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            color:Color(0xff070912) ),
      ),
      home: Home(),
    );
  }
}


