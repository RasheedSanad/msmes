import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//
import '../../core/res/values_manager.dart';

// 100	Thin (Hairline)
// 200	Extra Light (Ultra Light)
// 300	Light
// 400	Normal (Regular)
// 500	Medium
// 600	Semi Bold (Demi Bold)
// 700	Bold
// 800	Extra Bold (Ultra Bold)
// 900	Black (Heavy)

// GoogleFonts.courgette(
//       textStyle:
//     ),

class TextStyleManager {
  TextStyleManager._();

  static TextTheme textTheme() => TextTheme(
        //* Display
        displayLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_57,
            letterSpacing: -0.25,
            fontWeight: FontWeight.w500,
          ),
        ),

        displayMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_45,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),

        displaySmall: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_36,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),

        //* Headline
        headlineLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_32,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),

        headlineMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_28,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),
        headlineSmall: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_24,
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          ),
        ),

        //* Title
        titleLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_22,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),

        titleMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_16,
            letterSpacing: 0.15,
            fontWeight: FontWeight.w900,
          ),
        ),

        titleSmall: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_14,
            letterSpacing: 0,
            fontWeight: FontWeight.w900,
          ),
        ),
        //* Body
        bodyLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w500,
          ),
        ),

        bodyMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_14,
            letterSpacing: 0.25,
            fontWeight: FontWeight.w500,
          ),
        ),

        bodySmall: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_12,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w500,
          ),
        ),

        //* label
        labelLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.bold,
          ),
        ),

        labelMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),

        labelSmall: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: AppSizes.TEXT_SIZE_11,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
