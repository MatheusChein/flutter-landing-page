import 'package:flutter/material.dart';
import 'package:landing_page/components/responsive.dart';

import '../../../constants/colors.dart';
import '../../../components/custom_text.dart';

class InfoGroup extends StatelessWidget {
  const InfoGroup({
    Key? key,
    required this.label,
    required this.description,
  }) : super(key: key);

  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveWidget.isExtraSmallScreen(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        CustomText(
          label: label,
          size: ResponsiveWidget.isSmallScreen(context) ||
                  ResponsiveWidget.isExtraSmallScreen(context)
              ? 36
              : 44,
          wordSpacing: 10,
          fontWeight: FontWeight.bold,
          color: primaryColor,
          textAlign: ResponsiveWidget.isExtraSmallScreen(context)
              ? TextAlign.center
              : TextAlign.left,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomText(
          label: description,
          size: ResponsiveWidget.isSmallScreen(context) ||
                  ResponsiveWidget.isExtraSmallScreen(context)
              ? 14
              : 18,
          textAlign: ResponsiveWidget.isExtraSmallScreen(context)
              ? TextAlign.center
              : TextAlign.left,
        )
      ],
    );
  }
}
