import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';

class RoundedFullWidthButton extends StatelessWidget {
  const RoundedFullWidthButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
