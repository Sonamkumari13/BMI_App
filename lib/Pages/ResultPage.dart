import 'package:bmi/Components/ResultBtn.dart';
import 'package:bmi/Controllers/BMIController.dart';
import 'package:bmi/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget{
  const ResultPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    BMIControlller bmiControlller = Get.put(BMIControlller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Back',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
              fontSize: 16),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Your BMI is',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),)
                  ],
                ),
                SizedBox(height: 30,),
                Obx(
                    () => CircularPercentIndicator(
                      progressColor: bmiControlller.ColorStatus.value,
                      backgroundColor:bmiControlller.ColorStatus.value.withOpacity(0.2),
                      radius: 140.0,
                      lineWidth: 25.0,
                      animation: true,
                      percent: bmiControlller.BMI.value/100,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text("${bmiControlller.BMI.value.toStringAsFixed(1)}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: bmiControlller.ColorStatus.value
                        ),
                      ),
                      footer: Obx(
                          () => Text("${bmiControlller.BMIStatus.value}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: bmiControlller.ColorStatus.value),
                          ),
                      )
                    ),
                ),
                Container(height: 300,
                    child: bmiControlller.Images),
                ResultBtn(
                    onPress: (){
                      bmiControlller.CalculateBMI();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Icons.arrow_back_ios_new,
                    BtnName: 'Find Out More'),
                SizedBox(height: 10,)
              ],
            )
        ),
      )
    );
  }
}