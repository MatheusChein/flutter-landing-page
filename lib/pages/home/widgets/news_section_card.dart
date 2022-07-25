import 'package:flutter/material.dart';
import 'package:landing_page/components/custom_button.dart';
import 'package:landing_page/components/custom_text.dart';
import 'package:landing_page/components/responsive.dart';
import 'package:landing_page/helpers/gradient.dart';

import '../../../constants/colors.dart';

class NewsSectionCard extends StatelessWidget {
  const NewsSectionCard({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width / 4,
      height: 400,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 32,
      ),
      decoration: BoxDecoration(
        gradient: linearGradientColors(
          [
            Colors.white38,
            Colors.white70,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 6),
            color: boxShadowColor,
            blurRadius: 12,
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: ResponsiveWidget.isExtraSmallScreen(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          CustomText(
            label: 'New York Times - Mon 4 Jul',
            fontWeight: FontWeight.w100,
            size: 13,
            textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                ? TextAlign.center
                : TextAlign.start,
          ),
          CustomText(
            label: 'A clean way of scheduling your appointments',
            size: ResponsiveWidget.isExtraSmallScreen(context) ? 24 : 30,
            fontWeight: FontWeight.bold,
            textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                ? TextAlign.center
                : TextAlign.start,
          ),
          CustomText(
            label:
                'Promising startup proposes a new way of scheduling your interviews. EasyCalendar is soaring towards new...',
            size: ResponsiveWidget.isExtraSmallScreen(context) ? 14 : 16,
            textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                ? TextAlign.center
                : TextAlign.start,
          ),
          CustomButton(
            onTap: () {},
            label: 'READ MORE',
          ),
        ],
      ),
    );
  }
}
