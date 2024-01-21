import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../config/control_values.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.isRequired,
    required this.heightFactor,
    required this.widthFactor,
    required this.getDate,
    required this.selectedDate,
  }) : super(key: key);

  final String label;
  final String hintText;
  final bool isRequired;
  final Function(String) getDate;
  final String selectedDate;
  final double heightFactor;
  final double widthFactor;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        label.isEmpty
            ? SizedBox(height: screenHeight * 0.005)
            : Container(
                width: screenWidth * (widthFactor - 0.05),
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: screenHeight * 0.005, top: screenHeight * 0.01),
                child: Row(
                  children: [
                    Text(
                      label,
                      style: TextStyle(fontSize: screenWidth * ControlValues.textFontSize, color: Colors.black54),
                    ),
                    SizedBox(width: screenWidth * 0.002),
                    isRequired
                        ? Text(
                            "*",
                            style: TextStyle(fontSize: screenWidth * ControlValues.textFontSize, color: Colors.red),
                          )
                        : const Text(""),
                  ],
                ),
              ),
        Container(
          width: screenWidth * widthFactor,
          height: screenHeight * heightFactor,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black54, width: 0.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                // decoration: const BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
                child: selectedDate.isEmpty == true
                    ? Text(
                        hintText,
                        style: TextStyle(fontSize: screenWidth * ControlValues.textFontSize, color: Colors.black54),
                      )
                    : Text(selectedDate),
              ),
              MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.1,
                  child: const Icon(Icons.calendar_today_outlined),
                  onPressed: () {
                    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(DateTime.now().year), lastDate: DateTime(2030)).then((pickedDate) {
                      if (pickedDate != null) {
                        // getDate(_selectedDate);
                        getDate(DateFormat.yMd().format(pickedDate).toString());
                      }
                    });
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
