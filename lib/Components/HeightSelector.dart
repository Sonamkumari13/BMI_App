import 'package:bmi/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:get/get.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context){
    BMIControlller bmiControlller = Get.put(BMIControlller());
    return  Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height (CM)',
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
                fontSize: 18),),
              ],
            ),
        Expanded(
          child: Obx(
              () => SfSlider.vertical(
                min: 50,
                max: 250,
                value: bmiControlller.height.value,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 5,
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                onChanged: (dynamic value) {
                  bmiControlller.height.value = value;
                },
              ),
          )
        ),
           Obx(
               () => Container(
                   height: 50,
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                       color: Theme.of(context).colorScheme.primary,
                       borderRadius: BorderRadius.circular(8)
                   ),
                   child: Text("${bmiControlller.height.value.toStringAsFixed(1)}",
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Theme.of(context).colorScheme.primaryContainer,
                         fontSize: 25),)
               )
           )
          ],
        ),
      ),
    );
  }
  }