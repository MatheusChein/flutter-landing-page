import 'package:flutter/material.dart';
import 'package:landing_page/components/auth_dialog.dart';

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
    return ResponsiveWidget.isLargeScreen(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          )
        : SizedBox(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: _width / 12,
          vertical: ResponsiveWidget.isExtraSmallScreen(context) ? 50 : 120),
      child: renderResponsiveGroup(
        context,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ResponsiveWidget.isLargeScreen(context)
                    ? _width / 2.5
                    : _width / 1.5,
                child: CustomText(
                  label: 'Easy scheduling ahead',
                  fontWeight: FontWeight.w900,
                  size: ResponsiveWidget.isLargeScreen(context)
                      ? 64
                      : ResponsiveWidget.isMediumScreen(context)
                          ? 48
                          : 36,
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
                      'EasyCalendar is your hub for scheduling meetings professionally and efficiently, eliminating the hassle of back-and-forth emails so you can get back to work.',
                  wordSpacing: 6,
                  size: ResponsiveWidget.isLargeScreen(context)
                      ? 20
                      : ResponsiveWidget.isMediumScreen(context)
                          ? 16
                          : 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                label: 'Get started',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AuthenticationDialog(),
                  );
                },
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            "gifs/flying.gif",
          )
        ],
      ),
    );
  }
}
