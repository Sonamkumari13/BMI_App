import 'package:bmi/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme =ThemeData(
  useMaterial3: true,

  colorScheme: ColorScheme.light(
    onSurface: LBgColor,
    primary: LPrimaryColor,
    surfaceContainer: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor
),
);

var darkTheme =ThemeData(
  useMaterial3: true,

  colorScheme: ColorScheme.dark(
      onSurface: DBgColor,
      primary: DPrimaryColor,
      surfaceContainer: DFontColor,
      primaryContainer: DDivColor,
      onPrimaryContainer: DFontColor,
      onSecondaryContainer: DLableColor
  ),
);