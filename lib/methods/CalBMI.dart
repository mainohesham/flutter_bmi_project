import 'package:flutter/material.dart';
import 'dart:math';


class CalculateBMI {
   final int height;
   final int weight;

  CalculateBMI({required this.height,required this.weight});
  late double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String feedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have a fewer than normal body weight';
    }
  }

  String Nextfeedback(){
    if (_bmi >= 25) {
      return 'please do exercise more!';
    } else if (_bmi > 18.5) {
      return 'Good job!';
    } else {
      return 'please eat more!';
    }
  }
}