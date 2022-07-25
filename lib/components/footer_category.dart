import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_text.dart';

class FooterCategory extends StatelessWidget {
  const FooterCategory({
    Key? key,
    required this.title,
    required this.categoryItems,
  }) : super(key: key);

  final String title;
  final List<Widget> categoryItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                label: title,
                fontWeight: FontWeight.bold,
                size: 20,
              ),
              Container(
                height: 2,
                width: 88,
                margin: const EdgeInsets.only(top: 4),
                color: primaryColor,
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: categoryItems.map((widget) => widget).toList(),
            ),
          )
        ],
      ),
    );
  }
}
