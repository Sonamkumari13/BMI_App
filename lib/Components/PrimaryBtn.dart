import 'package:bmi/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryBtn extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final String btnName;
  const PrimaryBtn({super.key,required this.onPress, required this.icon, required this.btnName,});

  @override
  Widget build(BuildContext context){
    BMIControlller bmiControlller = Get.put(BMIControlller());
    return Expanded(
          child: InkWell(
            onTap: onPress,
            child: Obx(
                () => Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bmiControlller.Gender.value == btnName ?
                      Theme.of(context).colorScheme.primary :
                      Theme.of(context).colorScheme.primaryContainer
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: bmiControlller.Gender.value == btnName ?
                        Theme.of(context).colorScheme.primaryContainer :
                        Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(width: 0,),
                      Text(btnName,
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            color: bmiControlller.Gender.value == btnName ?
                            Theme.of(context).colorScheme.primaryContainer :
                            Theme.of(context).colorScheme.primary
                        ),
                      ),
                    ],
                  ),
                ),
            )
          ),
    );
  }
}