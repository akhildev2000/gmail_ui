import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/settings_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MaximumPageSize {
  Expanded maximumPageSizeContainer() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Maximum page size:",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 83,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SettingsWidgtes()
                      .optionalContent('Show:', ['10', '20', '50'], '50'),
                  Text(
                    '  conversations per page',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
