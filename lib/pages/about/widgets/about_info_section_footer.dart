import 'package:flutter/material.dart';

import 'about_info_group.dart';
import '../../../components/responsive.dart';

class InfoSectionFooter extends StatelessWidget {
  const InfoSectionFooter({
    Key? key,
  }) : super(key: key);

  Widget renderResponsiveGroup(BuildContext context,
      {required List<Widget> children}) {
    return ResponsiveWidget.isExtraSmallScreen(context)
        ? SizedBox(
            width: 500,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: children,
            ),
          )
        : SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return renderResponsiveGroup(
      context,
      children: const [
        InfoGroup(
          label: '10m',
          description: 'Users\nworldwide',
        ),
        InfoGroup(
          label: '50k',
          description: 'Companies use\nEasyCalendar',
        ),
        InfoGroup(
          label: '10m',
          description: 'Partner\nintegrations',
        ),
      ],
    );
  }
}
