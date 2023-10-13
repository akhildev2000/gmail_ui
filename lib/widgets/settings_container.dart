import 'package:flutter/material.dart';
import 'package:gmail_ui/widgets/defaulttext_component.dart';
import 'package:gmail_ui/widgets/draggable_star_components.dart';
import 'package:gmail_ui/widgets/language_components.dart';
import 'package:gmail_ui/widgets/maxpage_component.dart';
import 'package:gmail_ui/widgets/phonenumber_component.dart';
import 'package:gmail_ui/widgets/sett_components.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'undo_components.dart';

class SettingsContainer extends StatefulWidget {
  const SettingsContainer({super.key});

  @override
  State<SettingsContainer> createState() => _SettingsContainerState();
}

class _SettingsContainerState extends State<SettingsContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget desktopContainer() {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Container(
          padding: const EdgeInsets.only(top: 5, left: 30),
          child: Column(
            children: [
              Row(
                children: [Language().languageContainer()],
              ),
              const Divider(),
              Row(
                children: [PhoneNumber().phoneNumberContainer()],
              ),
              const Divider(),
              Row(
                children: [MaximumPageSize().maximumPageSizeContainer()],
              ),
              const Divider(),
              Row(
                children: [UndoSend().undoSendContainer()],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                      text: 'Default reply behaviour:',
                      radiotxt1: 'Reply',
                      radiotxt2: 'Reply all',
                      isActive1: false,
                      isActive2: false,
                      widthSet: 53)
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                    text: 'Hover actions: ',
                    radiotxt1:
                        'Enable hover actions - Quickly gain access to archive, delete, mark as read, and snooze controls on hover',
                    radiotxt2: 'Display hover actions',
                    isActive1: true,
                    isActive2: false,
                    widthSet: 110,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                    text: 'Send and Archive: ',
                    radiotxt1: 'Show "Send & Archive" button in reply',
                    radiotxt2: 'Hide "Send & Archive" button in reply',
                    isActive1: false,
                    isActive2: true,
                    widthSet: 85,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  DefaultText().defaultTextContainer(
                    fontOptions: ["Roboto", "Arial", "Sans-serif"],
                    selectedFont: "Roboto",
                    fontSize: 'Normal',
                    fontSizeOptions: ['Normal', 'Medium', 'Huge'],
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                    text: 'Images: ',
                    radiotxt1: 'Always display external images - Learn more',
                    radiotxt2:
                        'Ask before displaying external images - This option also disables dynamic email.',
                    isActive1: true,
                    isActive2: false,
                    widthSet: 150,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().setCheckBoxComponent(
                    text: 'Dynamic email',
                    widthSet: 110,
                    text2: 'Enable dynamic email',
                    text3: ' - Display dynamic email content when available',
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                    text: 'Grammar:',
                    radiotxt1: 'Grammar suggestions off',
                    radiotxt2: 'Grammar suggestions on',
                    isActive1: true,
                    isActive2: false,
                    widthSet: 140,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                      text: 'Spelling:',
                      radiotxt1: 'Spelling suggestions on',
                      radiotxt2: 'Spelling suggestions off',
                      isActive1: true,
                      isActive2: false,
                      widthSet: 147)
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                      text: 'Autocorrect::',
                      radiotxt1: 'Autocorrect on',
                      radiotxt2: 'Autocorrect off',
                      isActive1: true,
                      isActive2: false,
                      widthSet: 120),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  SetRadioComponents().radioComponents(
                      text: 'Spelling:',
                      radiotxt1: 'Spelling suggestions on',
                      radiotxt2: 'Spelling suggestions off',
                      isActive1: true,
                      isActive2: false,
                      widthSet: 147)
                ],
              ),
              const Divider(),
              const Row(
                children: [
                  Star(),
                ],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileContainer() {
    return Container();
  }
}
