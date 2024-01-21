import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/control_values.dart';
import '../../controllers/user/signup_controller.dart';
import '../../widgets/image_overlay_widget.dart';
import '../../widgets/svg_image_widget.dart';

class ApprovePendingScreen extends StatelessWidget {
  ApprovePendingScreen({Key? key}) : super(key: key);

  static const routeName = '/approve-pending-screen';

  final _sc = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.canvasColor,
      appBar: AppBar(
        backgroundColor: themeData.navigationBarTheme.backgroundColor,
        foregroundColor: themeData.textTheme.bodyText1!.color,
        title: const Text('Approve Pending'),
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(ControlValues.screenCornerRadius),
            bottomRight: Radius.circular(ControlValues.screenCornerRadius),
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: screenHeight * 0.02),
          Column(
            children: [
              const Text('Hello', style: TextStyle(fontSize: 20)),
              SizedBox(height: screenHeight * 0.001),
              const Text('Shehan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.23,
            child: Center(
              child: Stack(
                fit: StackFit.expand,
                children: const [
                  Positioned(
                    left: 70,
                    child: SVGImageWidget(
                      path: 'assets/images/company_logo.svg',
                      heightFactor: 0.23,
                      widthFactor: 0.23,
                      boarderRadius: 0,
                      boarderStatus: false,
                    ),
                  ),
                  Positioned(
                    right: 70,
                    child: SVGImageWidget(
                      path: 'assets/images/done.svg',
                      heightFactor: 0.23,
                      widthFactor: 0.23,
                      boarderRadius: 0,
                      boarderStatus: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text('Online Registration Complete', style: TextStyle(color: themeData.textTheme.bodyText1!.color, fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold)),
              Text('Taxime Team will approve your account soon', style: TextStyle(color: themeData.hintColor, fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
            ],
          ),
          Container(
            height: screenHeight * 0.17,
            width: screenWidth,
            decoration: BoxDecoration(
                color: themeData.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ControlValues.screenCornerRadius),
                  topRight: Radius.circular(ControlValues.screenCornerRadius),
                )),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.02),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Need help?",
                      style: TextStyle(color: themeData.hintColor, fontSize: screenWidth * 0.04),
                    ),
                  ],
                )),
                SizedBox(height: screenHeight * 0.02),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "TaxiMe Hotline", style: TextStyle(color: themeData.hintColor, fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                      TextSpan(text: "  076 769 769", style: TextStyle(color: themeData.errorColor, fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ImageOverlayWidget(
                            title: 'messenger',
                            provider: AssetImage('assets/icons/messenger.png'),
                            heightFactor: 0.08,
                            widthFactor: 0.08,
                            boarderRadius: 0,
                            boarderStatus: false),
                        SizedBox(width: screenWidth * 0.04),
                        const ImageOverlayWidget(
                            title: 'messenger',
                            provider: AssetImage('assets/icons/telephone_call.png'),
                            heightFactor: 0.08,
                            widthFactor: 0.08,
                            boarderRadius: 0,
                            boarderStatus: false),
                        SizedBox(width: screenWidth * 0.04),
                        const ImageOverlayWidget(
                            title: 'messenger',
                            provider: AssetImage('assets/icons/telegram.png'),
                            heightFactor: 0.08,
                            widthFactor: 0.08,
                            boarderRadius: 0,
                            boarderStatus: false)
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
