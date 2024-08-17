import 'package:bmi/Components/SelectBtn.dart';
import 'package:bmi/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIControlller bmiControlller = Get.put(BMIControlller());
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer
      ),
      height: 230,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight (Kg)',
              style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
              fontSize: 18),),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                  () => Text("${bmiControlller.weight.value}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.surfaceContainer,
                      fontSize: 75,),),
              )
                ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectBtn(
                  onpress: (){
                    bmiControlller.weight.value--;
                  },
                  icon: Icons.minimize),
              SelectBtn(
                  onpress: (){
                    bmiControlller.weight.value++;
                  },
                  icon: Icons.add)
            ],
          )
        ],
      ),
    );
  }
  }