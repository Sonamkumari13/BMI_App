import 'package:bmi/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultBtn extends StatelessWidget{
  final VoidCallback onPress;
  final String BtnName;
  final IconData icon;
  const ResultBtn({super.key, required this.onPress, required this.BtnName, required this.icon});

  @override
  Widget build(BuildContext context){
    BMIControlller bmiControlller = Get.put(BMIControlller());
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  color: bmiControlller.Gender.value == BtnName ?
                  Theme.of(context).colorScheme.primary :
                  Theme.of(context).colorScheme.onSurface),
              Text(BtnName,
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}