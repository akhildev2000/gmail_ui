import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/settings_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UndoSend {
  Expanded undoSendContainer() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Undo send:",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 145,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SettingsWidgtes().optionalContent(
                      'Send cancellation period:', ['10', '20', '5'], '5'),
                  Text(
                    '  seconds',
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
