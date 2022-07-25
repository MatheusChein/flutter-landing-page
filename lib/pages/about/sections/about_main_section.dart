import 'package:flutter/material.dart';
import 'package:landing_page/constants/colors.dart';

import '../../../components/auth_dialog.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/responsive.dart';

class MainSection extends StatelessWidget {
  const MainSection({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  Widget renderResponsiveGroup(BuildContext context,
      {required List<Widget> children}) {
    return ResponsiveWidget.isExtraSmallScreen(context)
        ? SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          )
        : SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _width / 12,
        vertical: ResponsiveWidget.isExtraSmallScreen(context) ? 50 : 80,
      ),
      child: SizedBox(
        height: ResponsiveWidget.isExtraSmallScreen(context) ? 450 : 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: ResponsiveWidget.isLargeScreen(context)
                  ? _width / 2
                  : _width / 1.5,
              child: CustomText(
                label: 'ABOUT EASYCALENDAR',
                fontWeight: FontWeight.w900,
                size: ResponsiveWidget.isLargeScreen(context) ||
                        ResponsiveWidget.isMediumScreen(context)
                    ? 24
                    : 20,
                textAlign: TextAlign.center,
                wordSpacing: 10,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: ResponsiveWidget.isLargeScreen(context)
                  ? _width / 2
                  : _width / 1.5,
              child: CustomText(
                label: 'We bring people together. You make the magic happen.',
                fontWeight: FontWeight.w900,
                size: ResponsiveWidget.isLargeScreen(context) ||
                        ResponsiveWidget.isMediumScreen(context)
                    ? 48
                    : ResponsiveWidget.isSmallScreen(context)
                        ? 36
                        : 24,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: ResponsiveWidget.isLargeScreen(context)
                  ? _width / 2.5
                  : _width / 1.5,
              child: CustomText(
                label:
                    'EasyCalendar takes the busywork of scheduling off your to-do list so you can get more done.',
                wordSpacing: 6,
                size: ResponsiveWidget.isLargeScreen(context)
                    ? 20
                    : ResponsiveWidget.isMediumScreen(context)
                        ? 16
                        : 14,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            renderResponsiveGroup(
              context,
              children: [
                CustomButton(
                  label: 'Get started',
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) => AuthenticationDialog(),
                    );
                  },
                ),
                CustomButton(
                  label: 'View leadership',
                  onTap: () {},
                  color: Colors.white,
                  hoveringColor: primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
