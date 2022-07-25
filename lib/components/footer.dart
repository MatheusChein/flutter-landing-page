import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'custom_text.dart';
import 'hover_link.dart';
import 'logo.dart';
import 'responsive.dart';
import 'social_icon.dart';
import 'footer_category.dart';

import '../constants/colors.dart';
import '../helpers/gradient.dart';

class Footer extends StatelessWidget {
  const Footer({
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
        : ResponsiveWidget.isExtraSmallScreen(context) ||
                ResponsiveWidget.isSmallScreen(context)
            ? SizedBox(
                height: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    children[0],
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: children.sublist(1, 3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: children.sublist(3, 5),
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    children[0],
                    SizedBox(
                      width: 800,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: children.sublist(1),
                      ),
                    ),
                  ],
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
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width / 4
                : _width / 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: ResponsiveWidget.isExtraSmallScreen(context)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Logo(
                  height:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 85 : 100,
                  width:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 85 : 100,
                  fontSize:
                      ResponsiveWidget.isExtraSmallScreen(context) ? 18 : 20,
                ),
                SizedBox(
                  height: ResponsiveWidget.isExtraSmallScreen(context) ||
                          ResponsiveWidget.isSmallScreen(context)
                      ? 32
                      : 56,
                ),
                CustomText(
                  label:
                      'We take the work out of connecting with others so you can accomplish more.',
                  fontWeight: FontWeight.w500,
                  textAlign: ResponsiveWidget.isExtraSmallScreen(context)
                      ? TextAlign.center
                      : TextAlign.start,
                ),
                SizedBox(
                  height: ResponsiveWidget.isExtraSmallScreen(context) ||
                          ResponsiveWidget.isSmallScreen(context)
                      ? 32
                      : 56,
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SocialIcon(
                        url: 'https://facebook.com',
                        icon: PhosphorIcons.facebookLogoBold,
                      ),
                      SocialIcon(
                        url: 'https://github.com/MatheusChein',
                        icon: PhosphorIcons.githubLogo,
                      ),
                      SocialIcon(
                        url: 'https://www.instagram.com/matheuschein/',
                        icon: PhosphorIcons.instagramLogoBold,
                      ),
                      SocialIcon(
                        url: 'https://www.linkedin.com/in/matheus-chein/',
                        icon: PhosphorIcons.linkedinLogoBold,
                      ),
                      SocialIcon(
                        url: 'https://www.youtube.com/watch?v=SN670lzXCho',
                        icon: PhosphorIcons.youtubeLogoBold,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const FooterCategory(
            title: 'About',
            categoryItems: [
              HoverLink(
                label: 'About\nEasyCalendar',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Contract Sales',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Security',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Scheduling',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
            ],
          ),
          const FooterCategory(
            title: 'Resources',
            categoryItems: [
              HoverLink(
                label: 'Help &\nSupport',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Community',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Docs',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Developer',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
            ],
          ),
          const FooterCategory(
            title: 'Solutions',
            categoryItems: [
              HoverLink(
                label: 'Customer\nSuccess',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Sales',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Recruiting',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Marketing',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
            ],
          ),
          const FooterCategory(
            title: 'Company',
            categoryItems: [
              HoverLink(
                label: 'Carrers',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Features',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'Discover',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
              HoverLink(
                label: 'News',
                color: primaryTextColor,
                hoveringColor: primaryColor,
                url: '/',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
