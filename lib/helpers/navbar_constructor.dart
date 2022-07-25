import 'package:flutter/material.dart';

import '../components/auth_dialog.dart';
import '../components/responsive.dart';
import '../components/logo.dart';
import '../components/custom_button.dart';
import '../components/hover_link.dart';
import '../constants/colors.dart';

Widget navbarConstructor(BuildContext context, GlobalKey<ScaffoldState> key) {
  if (ResponsiveWidget.isLargeScreen(context) ||
      ResponsiveWidget.isMediumScreen(context)) {
    return Row(
      children: [
        const HoverLink(
          label: 'Home',
          color: primaryColor,
          hoveringColor: Colors.white,
          url: '/',
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          width: 48,
        ),
        const HoverLink(
          label: 'Services',
          color: primaryColor,
          hoveringColor: Colors.white,
          url: '/',
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          width: 48,
        ),
        const HoverLink(
          label: 'Pricing',
          color: primaryColor,
          hoveringColor: Colors.white,
          url: '/',
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          width: 48,
        ),
        const HoverLink(
          label: 'About',
          color: primaryColor,
          hoveringColor: Colors.white,
          url: '/about',
          fontWeight: FontWeight.bold,
        ),
        const Spacer(),
        CustomButton(
          label: 'Login',
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AuthenticationDialog(),
            );
          },
        )
      ],
    );
  }

  return Row(
    children: [
      const Spacer(),
      Logo(
        hasLabel: ResponsiveWidget.isSmallScreen(context) ? true : false,
      )
    ],
  );
}
