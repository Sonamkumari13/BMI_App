import 'package:bmi/Controllers/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi/Controllers/ThemeController.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          height: 50,
          decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .colorScheme
                  .primaryContainer,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    themeController.changeTheme();
                  },
                  icon:  Icon(Icons.dark_mode,
                    color: themeController.isDark.value ?
                    Theme.of(context).colorScheme.onPrimaryContainer :
                    Theme.of(context).colorScheme.primary,)),
              IconButton(
                  onPressed: () {
                    themeController.changeTheme();
                  },
                  icon:  Icon(Icons.light_mode,
                      color: themeController.isDark.value ?
                      Theme.of(context).colorScheme.primary :
                      Theme.of(context).colorScheme.onPrimaryContainer))
            ],
          ),
        )
      ],
    );
  }
}