import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/settings_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumber {
  Expanded phoneNumberContainer() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone numbers:",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 113,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SettingsWidgtes().optionalContent('Default country code:',
                      ['India', 'Iceland', 'Germany'], 'India')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
