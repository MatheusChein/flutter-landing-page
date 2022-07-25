import 'package:flutter/material.dart';
import 'package:landing_page/components/custom_text.dart';
import 'package:landing_page/pages/home/widgets/news_section_card.dart';

import '../../../components/responsive.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
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
            height: 1300,
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
      child: Column(
        children: [
          SizedBox(
            width: _width / 1.5,
            child: CustomText(
              label: 'How EasyCalendar is changing the game',
              size: ResponsiveWidget.isSmallScreen(context)
                  ? 32
                  : ResponsiveWidget.isExtraSmallScreen(context)
                      ? 28
                      : 40,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          renderResponsiveGroup(
            context,
            children: [
              NewsSectionCard(width: _width),
              NewsSectionCard(width: _width),
              NewsSectionCard(width: _width),
            ],
          ),
        ],
      ),
    );
  }
}
