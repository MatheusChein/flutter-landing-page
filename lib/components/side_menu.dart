import 'package:flutter/material.dart';
import 'package:landing_page/components/hover_link.dart';

import '../constants/colors.dart';
import '../helpers/gradient.dart';
import 'auth_dialog.dart';
import 'custom_button.dart';
import 'logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Container build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: linearGradientColors(
          [
            opaquePrimaryColor,
            accentColor,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Logo(
            hasLabel: false,
          ),
          const SizedBox(
            height: 24,
          ),
          const HoverLink(
            label: 'Home',
            color: primaryColor,
            hoveringColor: Colors.white,
            url: '/',
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 16,
          ),
          const HoverLink(
            label: 'Services',
            color: primaryColor,
            hoveringColor: Colors.white,
            url: '/',
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 16,
          ),
          const HoverLink(
            label: 'Pricing',
            color: primaryColor,
            hoveringColor: Colors.white,
            url: '/',
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 16,
          ),
          const HoverLink(
            label: 'About',
            color: primaryColor,
            hoveringColor: Colors.white,
            url: '/about',
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 24,
          ),
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
      ),
    );
  }
}
