import 'package:flutter/material.dart';

import '../widgets/about_info_section_footer.dart';
import '../../../components/custom_text.dart';
import '../../../components/responsive.dart';
import '../../../constants/colors.dart';
import '../../../helpers/gradient.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          )
        : SizedBox(
            height: ResponsiveWidget.isExtraSmallScreen(context) ? 1100 : 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal:
            ResponsiveWidget.isLargeScreen(context) ? _width / 12 : _width / 6,
        vertical: ResponsiveWidget.isLargeScreen(context) ? 100 : 0,
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
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 4
                : _width / 1.5,
            child: Image.asset(
              'assets/gifs/user.gif',
              height: ResponsiveWidget.isExtraSmallScreen(context) ? 300 : 400,
            ),
          ),
          Container(
            padding: ResponsiveWidget.isLargeScreen(context)
                ? const EdgeInsets.only(top: 80)
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500,
                  child: CustomText(
                    label: 'We\'re the #1 scheduling platform',
                    fontWeight: FontWeight.bold,
                    size: ResponsiveWidget.isLargeScreen(context) ||
                            ResponsiveWidget.isMediumScreen(context)
                        ? 44
                        : ResponsiveWidget.isSmallScreen(context)
                            ? 32
                            : 28,
                    wordSpacing: 10,
                    textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
                ),
                Container(
                  height: 2,
                  width: 300,
                  margin: const EdgeInsets.only(top: 16),
                  color: primaryColor,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 500,
                  child: CustomText(
                    label:
                        'EasyCalendar takes the busywork of scheduling off your to-do list so you can get more done. Thousands of teams across the globe use EasyCalendar to make millions of 1-click meetings every week. Coordinate, connect, and nurture relationships all in one meeting lifecycle platform.',
                    textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                        ? TextAlign.center
                        : TextAlign.left,
                    size:
                        ResponsiveWidget.isExtraSmallScreen(context) ? 14 : 16,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const InfoSectionFooter()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
