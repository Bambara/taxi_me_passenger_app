import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/control_values.dart';
import '../../controllers/user/signup_controller.dart';
import '../../widgets/avatar_widget.dart';
import '../../widgets/date_picker_widget.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/radio_button_widget.dart';
import '../../widgets/text_field_widget.dart';

class SignupScreenStep01 extends StatelessWidget {
  SignupScreenStep01({Key? key}) : super(key: key);

  static const routeName = '/signup-screen-step-01';

  final _suC = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: themeData.navigationBarTheme.backgroundColor,
            foregroundColor: themeData.textTheme.bodyText1!.color,
            floating: true,
            snap: true,
            title: const Text('Signup ScreenStep01'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(ControlValues.screenCornerRadius),
                bottomRight: Radius.circular(ControlValues.screenCornerRadius),
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              GestureDetector(
                child: AvatarWidget(provider: const AssetImage('assets/images/company_logo.png'), size: screenWidth * 0.2),
                onTap: () {
                  // _smc.pickProfileImage();
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'First Name',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Last Name',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioButtonWidget(title: 'Male', sizeFactor: 0.05, onChanged: (val, res) {}, widthFactor: 0.2, groupValue: 0, position: 0),
                  SizedBox(width: screenWidth * 0.05),
                  RadioButtonWidget(title: 'Female', sizeFactor: 0.05, onChanged: (val, res) {}, widthFactor: 0.2, groupValue: 0, position: 0),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              DatePickerWidget(
                selectedDate: '',
                getDate: (p0) {},
                widthFactor: 0.9,
                heightFactor: 0.055,
                label: '',
                isRequired: true,
                hintText: 'DateTime Of Birth',
              ),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Email Address',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.emailAddress),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Mobile Number',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.phone),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'NIC Number',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Company Code (Default TaxiMe)',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Country',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Province',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'District / State',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'City / DSD',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'DFCC Account Number',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: ControlValues.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.number),
              SizedBox(height: screenHeight * 0.02),
              FlatButtonWidget(
                title: 'Next',
                function: () {
                  // Get.to(() => DispatcherScreen());
                },
                heightFactor: 0.065,
                widthFactor: 0.7,
                color: themeData.buttonTheme.colorScheme!.secondary,
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
