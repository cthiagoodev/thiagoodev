import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTitleWidget extends StatelessWidget {
  const AnimatedTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "Olá, meu nome é ",
          style: theme.textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontSize: 28.sp,
            fontWeight: FontWeight.w400,
          ),
        ),

        AnimatedTextKit(
          pause:  const Duration(milliseconds: 5000),
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              "Thiago Sousa",
              textStyle: GoogleFonts.jetBrainsMono(
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.primary,
              ),
              speed: const Duration(milliseconds: 100),
            ),

            TypewriterAnimatedText(
              "thiagoodev",
              textStyle: GoogleFonts.jetBrainsMono(
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.primary,
              ),
              cursor: "🔥",
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}