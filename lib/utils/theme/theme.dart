import 'package:flutter/material.dart';
import '../color_resource/color_resources.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: ColorResources.white,
  fontFamily: 'Poppins',
  primaryColor:ColorResources.primary,
  canvasColor:ColorResources.primary,
  colorScheme: ThemeData().colorScheme.copyWith(primary:
  ColorResources.primary),
  brightness: Brightness.light,
  cardColor: ColorResources.white,
  hintColor: ColorResources.hintText,
  scrollbarTheme: const ScrollbarThemeData(
    thickness: MaterialStatePropertyAll(5),
    minThumbLength: 20
  ),
  iconTheme:  IconThemeData(
    color: ColorResources.white,
  ),
);




ThemeData darkThemeData= ThemeData(
  scaffoldBackgroundColor: Colors.black,
  fontFamily: 'Poppins',
  primaryColor:ColorResources.white,
  canvasColor:ColorResources.white,
  colorScheme: ThemeData().colorScheme.copyWith(primary:
  ColorResources.white),
  brightness: Brightness.dark,
  cardColor: ColorResources.black,
  hintColor: ColorResources.hintText,
  scrollbarTheme: const ScrollbarThemeData(
      thickness: MaterialStatePropertyAll(5),
      minThumbLength: 20
  ),
  iconTheme:  IconThemeData(
    color: ColorResources.primary,
  ),


);
