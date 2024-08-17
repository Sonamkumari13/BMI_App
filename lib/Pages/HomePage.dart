import 'package:bmi/Components/AgeSelector.dart';
import 'package:bmi/Components/HeightSelector.dart';
import 'package:bmi/Components/PrimaryBtn.dart';
import 'package:bmi/Components/ResultBtn.dart';
import 'package:bmi/Components/ThemeChangeBtn.dart';
import 'package:bmi/Components/WeightSelector.dart';
import 'package:bmi/Components/WelcomeText.dart';
import 'package:bmi/Controllers/BMIController.dart';
import 'package:bmi/Controllers/ThemeController.dart';
import 'package:bmi/Pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeController themeController = Get.put(ThemeController());
    BMIControlller bmiControlller = Get.put(BMIControlller());

    return  Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.onSurface, 
          child: Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              children: [
                ThemeChangeBtn(),
                WelcomeText(),
                SizedBox(height: 20,),
                Row(
                  children: [
                    PrimaryBtn(
                      onPress: () {
                        bmiControlller.genderHandle("MALE");
                      },
                        icon: Icons.male,
                        btnName: 'MALE'),
                    SizedBox(width: 20,),
                    PrimaryBtn(
                        onPress: () {
                          bmiControlller.genderHandle("FEMALE");
                          },
                        icon: Icons.female,
                        btnName: 'FEMALE')
                  ],
                ),
                SizedBox(height: 20,),
                 Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       HeightSelector(),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WeightSelector(),
                              AgeSelector()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                    child: ResultBtn(
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                        },
                        icon: Icons.check,
                        BtnName: 'lets go')),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}