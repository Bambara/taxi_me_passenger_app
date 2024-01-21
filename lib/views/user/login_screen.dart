import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../config/control_values.dart';
import '../../controllers/user/login_controller.dart';
import '../../widgets/checkbox_widget.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/text_field_widget.dart';
// import '../driver/dispacher_screen.dart';
import 'otp_verify_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/signing_screen';

  final _lc = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: screenHeight - safeArea,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight * 0.06,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        color: themeData.primaryColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(ControlValues.screenCornerRadius),
                          bottomRight: Radius.circular(ControlValues.screenCornerRadius),
                        )),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('ආයුබෝවන්'),
                        VerticalDivider(thickness: 2, color: Colors.black, indent: 15, endIndent: 15),
                        Text('Welcome'),
                        VerticalDivider(thickness: 2, color: Colors.black, indent: 15, endIndent: 15),
                        Text('வரவேற்பு'),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/company_logo.svg',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.2,
                    width: screenHeight * 0.2,
                  ),
                  //SizedBox(height: screenHeight * 0.1),
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'TaxiMe Passenger',
                        style: TextStyle(color: themeData.hintColor, fontSize: screenWidth * 0.07),
                      ),
                    ],
                  )),
                  //SizedBox(height: screenHeight * 0.1),
                  Container(
                    height: screenHeight * 0.32,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        color: themeData.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(ControlValues.screenCornerRadius),
                          topRight: Radius.circular(ControlValues.screenCornerRadius),
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Let's Start Riding",
                              style: TextStyle(color: themeData.hintColor, fontSize: screenWidth * 0.04),
                            ),
                          ],
                        )),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        TextFieldWidget(
                            hintText: 'Enter Your Mobile Number Here',
                            label: '',
                            isRequired: true,
                            txtCtrl: _lc.passCtrl,
                            fontSize: ControlValues.textFontSize,
                            secret: false,
                            heightFactor: 0.055,
                            widthFactor: 0.8,
                            inputType: TextInputType.phone),
                        SizedBox(height: screenHeight * 0.01),
                        Center(
                          child: GestureDetector(
                              onTap: () {
                                _lc.showTAC();
                              },
                              child: CheckBoxWidget(checkStatus: true, title: 'Terms and Conditions', sizeFactor: 0.05, onChanged: (status) {}, widthFactor: 0.4)),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        FlatButtonWidget(
                          title: 'Sign In',
                          function: () {
                            Get.to(() => OPTVerifyScreen());
                          },
                          heightFactor: 0.065,
                          widthFactor: 0.5,
                          color: themeData.buttonTheme.colorScheme!.secondary,
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(text: "Don't have an account?", style: TextStyle(color: themeData.textTheme.bodyText1!.color)),
                            TextSpan(
                                text: "   Sing up",
                                style: TextStyle(color: themeData.buttonTheme.colorScheme!.secondary, fontSize: screenWidth * ControlValues.textFontSize),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Get.to(() => DispatcherScreen());
                                  }),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
