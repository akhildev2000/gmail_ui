import 'package:flutter/material.dart';
import 'package:gmail_ui/utils/constants.dart';
import 'package:gmail_ui/widgets/nav_bar.dart';
import 'package:gmail_ui/widgets/settings_container.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: ExactAssetImage('assets/gmail_logo.png')),
              SizedBox(height: 20),
              NavBar(),
              SettingsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
