import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIControlller extends GetxController {
  RxString Gender = 'MALE'.obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;
  RxDouble BMI = 0.0.obs;
  RxString BMIStatus ="".obs;
  Rx<Color> ColorStatus = Color(0xff246AFE).obs;
  var Images = Image.asset('assets/images/child_height.jpg');

  void genderHandle(String gender) {
    Gender.value = gender;
  }

  void CalculateBMI() {
    var Hmeter = height / 100;
    BMI.value = weight / (Hmeter * Hmeter);
    findStatus();
    print(BMI);
  }

  void findStatus(){
    if(BMI.value <18.5){
      BMIStatus.value = "Under Weight";
      ColorStatus.value = Color(0xff246AFE);
      Images = Image.asset('assets/images/under_weight.PNG');
    }
    if(BMI.value >18.5 && BMI.value <24.9){
      BMIStatus.value = "Normal";
      ColorStatus.value = Colors.green.shade400;
      Images = Image.asset('assets/images/normal.PNG');

    }
    if(BMI.value >25.0 && BMI.value <29.9){
      BMIStatus.value = "Over Weight";
      ColorStatus.value = Colors.yellow.shade700;
      Images = Image.asset('assets/images/over_weight.PNG');
    }
    if(BMI.value >30.0 && BMI.value <34.9){
      BMIStatus.value = "Obese";
      ColorStatus.value = Colors.orange.shade600;
      Images = Image.asset('assets/images/obese.PNG');
    }
    if(BMI.value >35.0){
      BMIStatus.value = "Extremely Obese";
      ColorStatus.value = Colors.red;
      Images = Image.asset('assets/images/extremly_obese.PNG');
    }
  }
}