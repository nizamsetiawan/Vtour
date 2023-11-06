import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:villagetour/config/app.color.dart';
import 'package:villagetour/page/home.page.dart';
import 'package:villagetour/page/intro.page.dart';
import 'package:villagetour/page/singin.page.dart';

import 'config/app.route.dart';

Future<void> main() async {
  // initializeDateFormatting('en_US');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
        scaffoldBackgroundColor: AppColor.bgprimary,
        primaryColor: AppColor.bgbuttonprimary,
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return const IntroPage();
              } else {
                return const HomePage();
              }
            },
          );
        },
        AppRoute.intro: (context) => const IntroPage(),
        AppRoute.home: (context) => const HomePage(),
        AppRoute.checkout: (context) => const HomePage(),
        AppRoute.checkoutsucces: (context) => const HomePage(),
        AppRoute.detail: (context) => const HomePage(),
        AppRoute.detailbooking: (context) => const HomePage(),
        AppRoute.singin: (context) => SigninPage(),
      },
    );
  }
}
