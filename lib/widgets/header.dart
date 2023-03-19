import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color primaryColor;
  final Color secondaryColor;

  const Header({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.primaryColor = const Color(0xFF526BF6),
    this.secondaryColor = const Color(0xFF67ACF2),
  });

  @override
  Widget build(BuildContext context) {
    final Color white = Colors.white.withOpacity(0.7);

    return Stack(
      children: [
        _HeaderBackground(primaryColor, secondaryColor),
        Positioned(
          left: -70,
          top: -70,
          child: FaIcon(
            icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 60,
              width: double.infinity,
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 20, color: white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 26, color: white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            FaIcon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}

class _HeaderBackground extends StatelessWidget {
  final Color primaryColor;
  final Color secondaryColor;

  const _HeaderBackground(this.primaryColor, this.secondaryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(70),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            primaryColor,
            secondaryColor,
          ],
        ),
      ),
    );
  }
}
