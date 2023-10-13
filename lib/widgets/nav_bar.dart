import 'package:flutter/material.dart';
import 'package:gmail_ui/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3, // Adjust the elevation value as needed
      shadowColor: Colors.grey.shade400,
      color: Colors.grey.shade100,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: ScreenTypeLayout.builder(
        mobile: (p0) => mobileNavBar(),
        desktop: (p0) => desktopNavBar(),
      ),
    );
  }

  Widget mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu)],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 82,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            style:
                GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              navButton('General', true),
              Sized.kwidth,
              navButton('Labels', false),
              Sized.kwidth,
              navButton('Inbox', false),
              Sized.kwidth,
              navButton('Accounts and Import', false),
              Sized.kwidth,
              navButton('Filters and Blocked Addresses', false),
              Sized.kwidth,
              navButton('Forwarding and POP/IMAP', false),
              Sized.kwidth,
              navButton('Add-ons', false),
              Sized.kwidth,
              navButton('Chat and Meet', false),
              Sized.kwidth,
              navButton('Advanced', false),
              Sized.kwidth,
              navButton('Offline', false),
              Sized.kwidth,
              navButton('Themes', false),
            ],
          )
        ],
      ),
    );
  }

  Widget navButton(String text, bool isActive) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(EdgeInsets.zero), // Remove padding
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed) || isActive) {
              // The button is pressed or active, apply blue text color
              return Colors.blue;
            }
            // Default text color when not pressed or active
            return Colors.grey.shade600;
          },
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.roboto(
            decoration:
                isActive ? TextDecoration.underline : TextDecoration.none,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
