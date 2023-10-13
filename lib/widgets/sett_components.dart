import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/settings_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SetRadioComponents {
  Expanded radioComponents({
    required String text,
    required String radiotxt1,
    required String radiotxt2,
    required bool isActive1,
    required bool isActive2,
    required double widthSet,
  }) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: widthSet,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsWidgtes().radioButtons(
                isActive1,
                radiotxt1,
              ),
              SettingsWidgtes().radioButtons(
                isActive2,
                radiotxt2,
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded setCheckBoxComponent({
    required String text,
    required double widthSet,
    required text2,
    required text3,
  }) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: widthSet,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Checkbox(
              value: true, // Set the initial checkbox value
              onChanged: (bool? newValue) {},
              activeColor: Colors.blue,
            ),
            Row(
              children: [
                Text(
                  text2,
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                ),
                Text(
                  text3,
                  style: GoogleFonts.roboto(),
                )
              ],
            ),
          ])
        ],
      ),
    );
  }
}
