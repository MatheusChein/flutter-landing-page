import 'package:flutter/material.dart';

import 'side_menu.dart';
import 'custom_text.dart';
import 'navbar.dart';
import 'footer.dart';

import '../../helpers/gradient.dart';

import '../../constants/colors.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        gradient: linearGradientColors(
          [
            opaquePrimaryColor,
            accentColor,
          ],
        ),
      ),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        drawer: const Drawer(
          width: 200,
          child: SideMenu(),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [navigationBar(context, scaffoldKey)],
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: children,
                ),
                Footer(width: width),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  width: width,
                  decoration: BoxDecoration(
                    gradient: linearGradientColors(
                      [
                        Colors.white70,
                        Colors.white,
                        Colors.white70,
                      ],
                    ),
                  ),
                  child: const CustomText(
                    label: 'Copyright © Matheus Chein 2022',
                    textAlign: TextAlign.center,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
