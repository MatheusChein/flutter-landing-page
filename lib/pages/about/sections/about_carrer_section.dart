import 'package:flutter/material.dart';
import 'package:landing_page/components/custom_button.dart';
import 'package:landing_page/components/custom_text.dart';

import '../../../components/responsive.dart';

class CarreerSection extends StatelessWidget {
  const CarreerSection({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _width / 12, vertical: 80),
      child: Column(
        children: [
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 2
                : ResponsiveWidget.isMediumScreen(context)
                    ? _width / 1.75
                    : _width,
            child: CustomText(
              label: 'Want to work with us?',
              fontWeight: FontWeight.bold,
              size: ResponsiveWidget.isLargeScreen(context)
                  ? 48
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 36
                      : 30,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 2
                : ResponsiveWidget.isMediumScreen(context)
                    ? _width / 1.75
                    : _width,
            child: CustomText(
              label:
                  'Share your Calendly link right from your browser, so you can schedule meetings without the back-and-forth',
              size: ResponsiveWidget.isLargeScreen(context)
                  ? 22
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 20
                      : 18,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(label: 'View open roles', onTap: () {})
        ],
      ),
    );
  }
}
