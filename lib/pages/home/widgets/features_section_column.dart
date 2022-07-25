import 'package:flutter/material.dart';
import 'package:landing_page/components/responsive.dart';
import 'package:landing_page/constants/colors.dart';

import '../../../components/custom_text.dart';

class FeatureSectionColumn extends StatelessWidget {
  const FeatureSectionColumn({
    Key? key,
    required double width,
    required this.imgPath,
    required this.title,
    required this.description,
  })  : _width = width,
        super(key: key);

  final double _width;
  final String imgPath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveWidget.isLargeScreen(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Image.asset(imgPath),
        CustomText(
          label: title,
          fontWeight: FontWeight.bold,
          size: ResponsiveWidget.isExtraSmallScreen(context) ? 20 : 24,
          color: primaryColor,
          textAlign: ResponsiveWidget.isLargeScreen(context)
              ? TextAlign.start
              : TextAlign.center,
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width:
              ResponsiveWidget.isLargeScreen(context) ? _width / 4 : _width / 2,
          child: CustomText(
            label: description,
            fontWeight: FontWeight.w500,
            size: ResponsiveWidget.isSmallScreen(context) ||
                    ResponsiveWidget.isExtraSmallScreen(context)
                ? 14
                : 16,
            textAlign: ResponsiveWidget.isLargeScreen(context)
                ? TextAlign.start
                : TextAlign.center,
          ),
        ),
      ],
    );
  }
}
