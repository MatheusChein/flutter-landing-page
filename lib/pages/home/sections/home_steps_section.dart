import 'package:flutter/material.dart';
import 'package:landing_page/components/responsive.dart';
import 'package:landing_page/helpers/gradient.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../widgets/steps_section_card.dart';

class StepsSection extends StatelessWidget {
  const StepsSection({
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
            height: ResponsiveWidget.isMediumScreen(context) ? 1500 : 1600,
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWidget.isMediumScreen(context)
                  ? _width / 8
                  : ResponsiveWidget.isSmallScreen(context)
                      ? _width / 12
                      : 0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _width / 12,
        vertical: 100,
      ),
      decoration: BoxDecoration(
        gradient: linearGradientColors(
          [
            Colors.white70,
            Colors.white,
            Colors.white70,
          ],
        ),
      ),
      child: renderResponsiveGroup(
        context,
        children: [
          StepsSectionCard(
            width: _width,
            title: 'Create simple rules',
            text:
                'Let EasyCalendar know your availability preferences and it’ll do the work for you.',
            bottomIcon: PhosphorIcons.numberCircleOne,
            imagePath: 'assets/images/laptop.png',
          ),
          StepsSectionCard(
            width: _width,
            title: 'Share your link',
            text: 'Send guests your Calendly link or embed it on your website.',
            bottomIcon: PhosphorIcons.numberCircleTwo,
            imagePath: 'assets/images/sharing.png',
          ),
          StepsSectionCard(
            width: _width,
            title: 'Get booked',
            text: 'They pick a time and the event is added to your calendar.',
            bottomIcon: PhosphorIcons.numberCircleThree,
            imagePath: 'assets/images/calendar.png',
          ),
        ],
      ),
    );
  }
}
