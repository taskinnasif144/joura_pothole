import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joura_pothole/core/constants/app_colors.dart';
import 'package:joura_pothole/core/constants/app_fonts.dart';

class CustomPhoneInputField extends StatelessWidget {
  const CustomPhoneInputField({
    super.key,
    required this.controller,
    this.title,
  });
  final TextEditingController controller;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title!, style: AppFonts.bodyBoldMedium),
        if (title != null) SizedBox(height: 8.h),
        Container(
          // Container to style the field
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.whiteE4),
          ),
          child: IntlPhoneField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              counterText: '', // This removes the number length count
            ),
            keyboardType: TextInputType.number,
            initialCountryCode: 'TR', // Contry code for Turkey
            onChanged: (phone) {
              // saving the phone number in the controller
              controller.text = phone.completeNumber;
            },
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ],
    );
  }
}
