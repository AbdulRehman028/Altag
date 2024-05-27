import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.mainColor,
        brightness: Brightness.light,
        background: Colors.white,
        surface: Colors.white,
      ).copyWith(
        primary: AppColors.mainColor,
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(AppColors.mainColor),
        checkColor: MaterialStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme).copyWith(
        displayLarge: const TextStyle(fontWeight: FontWeight.bold),
        displayMedium: const TextStyle(fontWeight: FontWeight.bold),
        displaySmall: const TextStyle(fontWeight: FontWeight.bold),
        titleLarge: const TextStyle(fontWeight: FontWeight.w600),
        titleMedium: const TextStyle(fontWeight: FontWeight.w600),
        titleSmall: const TextStyle(fontWeight: FontWeight.w600),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      dividerTheme: const DividerThemeData(
        thickness: 0.6,
        color: AppColors.placeHolderColor,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.mainColor,
        brightness: Brightness.dark,
      ).copyWith(
        primary: AppColors.mainColor,
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(AppColors.mainColor),
        checkColor: MaterialStateProperty.all(Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme).copyWith(
          displayLarge: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold),
          displayMedium: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),
          displaySmall: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),
          titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
          titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
          titleSmall: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600)),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      dividerTheme: const DividerThemeData(
        thickness: 0.6,
        color: AppColors.placeHolderColor,
      ),
    );
  }
}