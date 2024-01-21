import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/radio/gf_radio.dart';

class RadioButtonWidget extends StatelessWidget {
  RadioButtonWidget(
      {Key? key, required this.title, required this.sizeFactor, required this.onChanged, required this.widthFactor, required this.groupValue, required this.position})
      : super(key: key);

  final String title;
  final double sizeFactor;
  final double widthFactor;
  final Function(int, int) onChanged;
  final int position;
  final int groupValue;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * widthFactor,
      child: Row(
        children: [
          GFRadio(
            size: screenWidth * sizeFactor,
            value: position,
            groupValue: groupValue,
            onChanged: (value) {
              onChanged(int.parse(value.toString()), position);
            },
            activeBorderColor: GFColors.SECONDARY,
            radioColor: GFColors.SUCCESS,
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          Text(title),
        ],
      ),
    );
  }
}
