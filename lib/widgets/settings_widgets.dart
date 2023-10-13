import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidgtes {
  Widget optionalContent(String text, List<String> items, String selectedOne) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 4),
            dropDownWithScroll(
              items, // List of items
              selectedOne, // The currently selected value
            ),
          ],
        ),
        // Add other optional content here
      ],
    );
  }

  Widget dropDownWithScroll(
    List<String> items,
    String? selectedValue,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 25.0,
      width: 150.0,
      child: DropdownButton<String>(
        value: selectedValue,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: GoogleFonts.roboto(fontSize: 15),
            ),
          );
        }).toList(),
        onChanged: (value) => (),
        icon: const Icon(Icons.arrow_drop_down),
        underline: Container(),
      ),
    );
  }

  Widget radioButtons(bool isActive, String text) {
    return Row(
      children: [
        Radio(
            value: isActive,
            groupValue: true,
            onChanged: (value) {},
            activeColor: Colors.blue,
            hoverColor: Colors.transparent),
        Text(
          text,
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget secTextButton(String text) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: const MaterialStatePropertyAll(Colors.blue),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(EdgeInsets.zero), // Remove padding
        textStyle: MaterialStateProperty.all(
          GoogleFonts.roboto(
            color: Colors.blue,
            letterSpacing: 0.5,
          ),
        ),
      ),
      child: Text(text),
    );
  }

  Widget checkBoxWidget(String text, String text2) {
    return Row(
      children: [
        Checkbox(
          value: true, // Set the initial checkbox value
          onChanged: (bool? newValue) {},
          activeColor: Colors.blue,
        ),
        Row(
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: GoogleFonts.roboto(),
            )
          ],
        ),
      ],
    );
  }
}
