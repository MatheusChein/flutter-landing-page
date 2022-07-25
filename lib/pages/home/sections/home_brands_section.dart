import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing_page/components/custom_text.dart';
import 'package:landing_page/constants/colors.dart';

import '../../../components/responsive.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  Widget renderResponsiveGroup(BuildContext context,
      {required List<Widget> children}) {
    return ResponsiveWidget.isLargeScreen(context) ||
            ResponsiveWidget.isMediumScreen(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          )
        : SizedBox(
            width:
                ResponsiveWidget.isSmallScreen(context) ? _width / 1.2 : _width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    children[0],
                    children[1],
                    children[2],
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    children[3],
                    children[4],
                  ],
                ),
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _width / 12, vertical: 100),
      child: Column(
        children: [
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 2
                : ResponsiveWidget.isMediumScreen(context)
                    ? _width / 1.75
                    : _width,
            child: CustomText(
              label:
                  'Simplified scheduling for more than 10,000,000 users worldwide',
              fontWeight: FontWeight.bold,
              size: ResponsiveWidget.isLargeScreen(context)
                  ? 36
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 30
                      : 24,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          SizedBox(
            child: renderResponsiveGroup(
              context,
              children: [
                SvgPicture.asset(
                  'assets/images/compass.svg',
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 15 : 20,
                  width: ResponsiveWidget.isExtraSmallScreen(context) ? 15 : 20,
                  color: primaryTextColor,
                ),
                SvgPicture.asset(
                  'assets/images/drop.svg',
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 30 : 40,
                  width: ResponsiveWidget.isExtraSmallScreen(context) ? 30 : 40,
                  color: primaryTextColor,
                ),
                SvgPicture.asset(
                  'assets/images/ebay.svg',
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 25 : 30,
                  width: ResponsiveWidget.isExtraSmallScreen(context) ? 25 : 30,
                  color: primaryTextColor,
                ),
                SvgPicture.asset(
                  'assets/images/lazboy.svg',
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 20 : 30,
                  width: ResponsiveWidget.isExtraSmallScreen(context) ? 20 : 30,
                  color: primaryTextColor,
                ),
                SvgPicture.asset(
                  'assets/images/twilio.svg',
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 30 : 40,
                  width: ResponsiveWidget.isExtraSmallScreen(context) ? 30 : 40,
                  color: primaryTextColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
