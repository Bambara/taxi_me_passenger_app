import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/common/splash_controller.dart';
import '../user/login_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  static const routeName = '/splash_screen';

  final _sc = Get.put(SplashController());

  void loadLogging() async {
    print('starting');
    final completer = Completer();
    final t = Timer(const Duration(seconds: 5), () => completer.complete());
    await completer.future;
    print('done');
    Get.off(() => LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    loadLogging();

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'ජාතියේ ගමන් සහකරු',
                  style: GoogleFonts.gemunuLibre(fontSize: screenWidth * 0.08, fontWeight: FontWeight.bold, color: themeData.colorScheme.secondary),
                ),
                SvgPicture.asset(
                  'assets/images/company_logo.svg',
                  fit: BoxFit.cover,
                  height: screenHeight * 0.3,
                  width: screenHeight * 0.3,
                ),
                Text(
                  'www.taxime.lk',
                  style: TextStyle(fontSize: screenWidth * 0.04),
                ),
                SizedBox(height: screenHeight * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
