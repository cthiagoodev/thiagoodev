import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/widgets/animated_title_widget.dart';

class PresentationView extends StatefulWidget {
  PresentationView({super.key});

  @override
  State<PresentationView> createState() => _PresentationViewState();
}

class _PresentationViewState extends State<PresentationView> {
  double x = 0;
  double y = 0;
  double z = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTitleWidget(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                child: Text(
                  "Sou um desenvolvedor apaixonado por transformar ideias em realidade através da tecnologia. "
                      "Domino tecnologias como Flutter e Dart, Kotlin para Android e SpringBoot, para "
                      "criar soluções inovadoras e eficientes para web, mobile e backend",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform(
                transform: Matrix4(
                  1,0,0,0,
                  0,1,0,0,
                  0,0,1,0,
                  0,0,0,1,
                )..rotateX(x)..rotateY(y)..rotateZ(z),
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      y = y - details.delta.dx / 100;
                    });
                  },

                  child: Container(
                    width: 80.w,
                    height: 80.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}