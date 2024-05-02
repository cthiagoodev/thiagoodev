import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/views/home_view.dart';

void main() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "thiagoodev",
      theme: theme,
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
        child: const HomeView(),
      ),
    );
  }
}
