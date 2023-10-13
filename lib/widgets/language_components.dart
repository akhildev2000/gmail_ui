import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/settings_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Language {
  Expanded languageContainer() {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Language:",
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 150,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SettingsWidgtes().optionalContent(
                  'Gmail display language:',
                  ['English (US)', 'Afrikans', 'Deutsch'],
                  'English (US)',
                ),
                const SizedBox(width: 5),
                SettingsWidgtes().secTextButton(
                    'Change the language settings for other google products')
              ],
            ),
            SettingsWidgtes().checkBoxWidget('Enable input tools',
                ' - Use various text input tools to type in the language of your choice'),
            SettingsWidgtes()
                .radioButtons(true, 'Right-to-left editing support off'),
            SettingsWidgtes()
                .radioButtons(false, 'Right-to-left editing support on')
          ],
        )
      ],
    ));
  }
}
