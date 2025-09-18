import 'package:flutter/material.dart';
import 'app_colors.dart';


final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.dark,
  ),
  
  useMaterial3: true,
);