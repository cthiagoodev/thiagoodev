import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFFC04881);
  static const Color secondary = Color(0xFFF7931A);
  static const Color background = Color(0xFF000000);
}

final ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.background,
      surface: AppColors.primary,
    ),

    textTheme: GoogleFonts.quicksandTextTheme(TextTheme(
      bodySmall: TextStyle(
        color: Colors.grey,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: Colors.grey,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: Colors.grey,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: AppColors.primary,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        color: AppColors.primary,
        fontSize: 21.sp,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        color: AppColors.primary,
        fontSize: 27.sp,
        fontWeight: FontWeight.w700,
      ),
    )),


    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.withOpacity(.1),
      filled: true,
      hintStyle: GoogleFonts.comfortaa(
        color: Colors.grey,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100.r),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100.r),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100.r),
        borderSide: BorderSide.none,
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll<TextStyle>(GoogleFonts.comfortaa(
          color: Colors.grey,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        )),
        overlayColor: MaterialStatePropertyAll<Color>(AppColors.primary.withOpacity(.1)),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        )),
        textStyle: MaterialStatePropertyAll<TextStyle>(GoogleFonts.comfortaa(
          color: Colors.grey,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        )),
        elevation: const MaterialStatePropertyAll<double>(0),
        backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.secondary),
      ),
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.secondary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.secondary,
      ),
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.all(10.w),
      splashColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.r),
      ),
    ),

    checkboxTheme: CheckboxThemeData(
      checkColor: const MaterialStatePropertyAll(Colors.white),
      fillColor: const MaterialStatePropertyAll(AppColors.primary),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
        side: BorderSide.none,
      ),
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xffFFFFFF),
    )
);