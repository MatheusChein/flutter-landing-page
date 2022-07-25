import 'package:flutter/material.dart';
import 'package:landing_page/components/custom_text.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/helpers/gradient.dart';

import '../widgets/features_section_column.dart';
import '../../../components/responsive.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  Widget renderResponsiveGroup(BuildContext context,
      {required List<Widget> children}) {
    return ResponsiveWidget.isLargeScreen(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: children,
          )
        : Container(
            height: ResponsiveWidget.isExtraSmallScreen(context) ? 900 : 1100,
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWidget.isMediumScreen(context)
                  ? _width / 10
                  : ResponsiveWidget.isSmallScreen(context)
                      ? _width / 10
                      : _width / 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: linearGradientColors(
          [
            Colors.white70,
            Colors.white,
            Colors.white70,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal:
            ResponsiveWidget.isLargeScreen(context) ? _width / 12 : _width / 8,
        vertical: 100,
      ),
      child: Column(
        children: [
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 1.75
                : ResponsiveWidget.isMediumScreen(context)
                    ? _width / 1.5
                    : _width,
            child: CustomText(
              label:
                  'Schedule your interviews hassle-free and land your dream job',
              size: ResponsiveWidget.isLargeScreen(context)
                  ? 48
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 40
                      : 24,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              wordSpacing:
                  ResponsiveWidget.isExtraSmallScreen(context) ? 4 : 10,
            ),
          ),
          SizedBox(
            height: ResponsiveWidget.isExtraSmallScreen(context) ? 32 : 48,
          ),
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 2
                : _width / 1.3,
            child: CustomText(
              label:
                  'EasyCalendar uncomplicates scheduling by only offering times that work with your availability across all of your calendars.',
              size: ResponsiveWidget.isLargeScreen(context)
                  ? 20
                  : ResponsiveWidget.isMediumScreen(context)
                      ? 16
                      : 14,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Container(
            decoration: BoxDecoration(
              color: opaquePrimaryColor,
              backgroundBlendMode: BlendMode.dstOver,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.only(bottom: 48),
            child: renderResponsiveGroup(
              context,
              children: [
                FeatureSectionColumn(
                  width: _width,
                  title: 'Meet the way you want',
                  description:
                      'Open your schedule only to the days and times that work for you. When your invitee chooses a meeting slot, it’s instantly confirmed.',
                  imgPath: 'assets/gifs/letter.gif',
                ),
                FeatureSectionColumn(
                  width: _width,
                  title: 'EasyCalendar coordinates it all',
                  description:
                      'Meetings are scheduled without calendar conflicts, reminders go out automatically, and rescheduling is a breeze for everyone.',
                  imgPath: 'assets/gifs/breeze.gif',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
