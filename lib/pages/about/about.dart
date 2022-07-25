import 'package:flutter/material.dart';

import 'sections/about_info_section.dart';
import 'sections/about_carrer_section.dart';
import 'sections/about_main_section.dart';

import '../../components/site_layout.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SiteLayout(
      children: [
        MainSection(width: width),
        InfoSection(width: width),
        CarreerSection(width: width)
      ],
    );
  }
}
