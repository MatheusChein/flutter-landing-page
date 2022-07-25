import 'package:flutter/material.dart';
import 'package:landing_page/components/site_layout.dart';
import 'package:landing_page/pages/home/sections/home_news_section.dart';

import 'sections/home_brands_section.dart';
import 'sections/home_features_section.dart';
import 'sections/home_main_section.dart';
import 'sections/home_steps_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SiteLayout(
      children: [
        MainSection(width: width),
        StepsSection(width: width),
        BrandsSection(width: width),
        FeaturesSection(width: width),
        NewsSection(width: width),
      ],
    );
  }
}
