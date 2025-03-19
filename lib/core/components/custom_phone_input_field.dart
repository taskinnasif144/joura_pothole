import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:joura_pothole/core/constants/app_colors.dart';

class CustomPhoneInputField extends StatelessWidget {
  const CustomPhoneInputField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container to style the field
      decoration: BoxDecoration(border: Border.all(color: AppColors.whiteE4)),
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
    );
  }
}
