import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joura_pothole/core/constants/app_colors.dart';

class AppFonts {
  static TextStyle titleLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: 40.sp,
    color: AppColors.blackOC,
  );
  static TextStyle titleMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    color: AppColors.blackOC,
  );
  static TextStyle titleSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: AppColors.blackOC,
  );

  static TextStyle bodyBoldLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: AppColors.blackOC,
  );
  static TextStyle bodyBoldMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.blackOC,
  );
  static TextStyle bodyBoldSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    color: AppColors.blackOC,
  );

  static TextStyle bodyLightLarge = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.blackOC,
  );
  static TextStyle bodyLightMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.blackOC,
  );
  static TextStyle bodyLightSmall = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.blackOC,
  );
}
