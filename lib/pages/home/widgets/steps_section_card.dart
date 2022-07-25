import 'package:flutter/material.dart';
import 'package:landing_page/components/custom_text.dart';
import 'package:landing_page/components/hover_card.dart';
import 'package:landing_page/components/responsive.dart';

import '../../../constants/colors.dart';

class StepsSectionCard extends StatelessWidget {
  const StepsSectionCard({
    Key? key,
    required double width,
    required this.title,
    required this.text,
    required this.bottomIcon,
    required this.imagePath,
  })  : _width = width,
        super(key: key);

  final double _width;
  final String title;
  final String text;
  final IconData bottomIcon;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return HoverCard(
      child: Container(
        width: _width / 4,
        height: ResponsiveWidget.isSmallScreen(context) ||
                ResponsiveWidget.isExtraSmallScreen(context)
            ? 500
            : 450,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 32,
        ),
        decoration: BoxDecoration(
          gradient: const SweepGradient(
            colors: [
              opaquePrimaryColor,
              opaqueAccentColor,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 6),
              color: boxShadowColor,
              blurRadius: 12,
            )
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath,
              width: 220,
              height: 220,
            ),
            CustomText(
              label: title,
              color: Colors.white,
              size: 24,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            CustomText(
              label: text,
              color: Colors.white70,
              textAlign: TextAlign.center,
            ),
            Icon(
              bottomIcon,
              size: 32,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
