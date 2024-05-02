import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/widgets/animated_title_widget.dart';

class PresentationView extends StatelessWidget {
  const PresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedTitleWidget(),

        Text(
          "Em construção...",
          style: theme.textTheme.bodyLarge?.copyWith(
            color: Colors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}