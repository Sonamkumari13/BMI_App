import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(
        children: [
          Text(
            'Welcome 😊',
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer),
          ),
        ],
      ),
        Row(
          children: [
            Text(
              'BMI Calculator',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.surfaceContainer
              ),
            )
          ],
        )],
    );
  }
  }