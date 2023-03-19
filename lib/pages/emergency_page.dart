import 'package:animate_do/animate_do.dart';
import 'package:emergency_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonItem {
  final IconData icon;
  final String text;
  final Color primaryColor;
  final Color secondaryColor;

  ButtonItem(this.icon, this.text, this.primaryColor, this.secondaryColor);
}

class EmergencyPage extends StatelessWidget {
  static const route = "emergency";
  const EmergencyPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          margin: const EdgeInsets.only(top: 160),
          child: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(
                  height: 80,
                ),
                ..._getButtons(),
              ],
            ),
          ),
        ),
        const _PageHeader(),
      ]),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Header(
          icon: FontAwesomeIcons.plus,
          title: 'Asistencia Médica',
          subtitle: 'Has solicitado',
        ),
        Positioned(
          right: -15,
          top: 40,
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15.0),
            child: const FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

List<Widget> _getButtons() {
  final items = <ButtonItem>[
    ButtonItem(FontAwesomeIcons.carBurst, 'Motor Accident',
        const Color(0xff6989F5), const Color(0xff906EF5)),
    ButtonItem(FontAwesomeIcons.plus, 'Medical Emergency',
        const Color(0xff66A9F2), const Color(0xff536CF6)),
    ButtonItem(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
        const Color(0xffF2D572), const Color(0xffE06AA3)),
    ButtonItem(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
        const Color(0xff46997D)),
    ButtonItem(FontAwesomeIcons.carBurst, 'Motor Accident',
        const Color(0xff6989F5), const Color(0xff906EF5)),
    ButtonItem(FontAwesomeIcons.plus, 'Medical Emergency',
        const Color(0xff66A9F2), const Color(0xff536CF6)),
    ButtonItem(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
        const Color(0xffF2D572), const Color(0xffE06AA3)),
    ButtonItem(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
        const Color(0xff46997D)),
    ButtonItem(FontAwesomeIcons.carBurst, 'Motor Accident',
        const Color(0xff6989F5), const Color(0xff906EF5)),
    ButtonItem(FontAwesomeIcons.plus, 'Medical Emergency',
        const Color(0xff66A9F2), const Color(0xff536CF6)),
    ButtonItem(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
        const Color(0xffF2D572), const Color(0xffE06AA3)),
    ButtonItem(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
        const Color(0xff46997D)),
  ];

  return List.generate(
    items.length,
    (index) => FadeInLeft(
      duration: const Duration(milliseconds: 750),
      child: OptionCard(
        icon: items[index].icon,
        title: items[index].text,
        onPressed: () {},
        primaryColor: items[index].primaryColor,
        secondaryColor: items[index].secondaryColor,
      ),
    ),
  );
}
