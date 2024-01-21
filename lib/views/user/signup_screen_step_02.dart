import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/control_values.dart';
import '../../controllers/user/signup_controller.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/image_overlay_widget.dart';
import 'approve_pending_screen.dart';

class SignupScreenStep02 extends StatelessWidget {
  SignupScreenStep02({Key? key}) : super(key: key);

  static const routeName = '/signup-screen-step-02';

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
        title: const Text('SignUp Step 2'),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ImageOverlayWidget(
                      provider: AssetImage('assets/images/nic.jpg'),
                      heightFactor: 0.35,
                      widthFactor: 0.45,
                      boarderRadius: 0.02,
                      boarderStatus: true,
                      title: 'NIC',
                    ),
                    ImageOverlayWidget(
                      provider: AssetImage('assets/images/lision.jpg'),
                      heightFactor: 0.35,
                      widthFactor: 0.45,
                      boarderRadius: 0.02,
                      boarderStatus: true,
                      title: 'NIC',
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ImageOverlayWidget(
                      provider: AssetImage('assets/images/nic.jpg'),
                      heightFactor: 0.35,
                      widthFactor: 0.45,
                      boarderRadius: 0.02,
                      boarderStatus: true,
                      title: 'NIC',
                    ),
                    ImageOverlayWidget(
                      provider: AssetImage('assets/images/lision.jpg'),
                      heightFactor: 0.35,
                      widthFactor: 0.45,
                      boarderRadius: 0.02,
                      boarderStatus: true,
                      title: 'NIC',
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButtonWidget(
                  title: 'Next',
                  function: () {
                    Get.to(() => ApprovePendingScreen());
                  },
                  heightFactor: 0.065,
                  widthFactor: 0.5,
                  color: themeData.buttonTheme.colorScheme!.secondary,
                ),
                SizedBox(width: screenWidth * 0.04),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
