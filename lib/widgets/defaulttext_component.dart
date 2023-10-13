import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultText {
  Expanded defaultTextContainer({
    required List<String> fontOptions,
    required String selectedFont,
    required List<String> fontSizeOptions,
    required String fontSize,
  }) {
    return Expanded(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            "Default text style:",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 100,
          ),
          Material(
            elevation: 3, // Adjust the elevation value as needed
            shadowColor: Colors.grey.shade400,
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        DropdownButton<String>(
                          value: selectedFont,
                          items: fontOptions.map((String font) {
                            return DropdownMenuItem<String>(
                              value: font,
                              child: Text(font),
                            );
                          }).toList(),
                          onChanged: (value) => (),
                          underline: Container(),
                        ),
                        DropdownButton<String>(
                          value: fontSize,
                          items: fontSizeOptions.map((String font) {
                            return DropdownMenuItem<String>(
                              value: font,
                              child: Text(font),
                            );
                          }).toList(),
                          onChanged: (value) => (),
                          underline: Container(),
                        ),
                      ],
                    ),
                    Text(
                      "This is what your body text will look like.",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ]));
  }
}
