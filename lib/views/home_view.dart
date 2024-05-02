import 'package:flutter/material.dart';
import 'package:portfolio/views/presentation_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          PresentationView(),
        ],
      ),
    );
  }
}