import 'package:flutter/material.dart';
import 'package:landing_page/components/responsive.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../helpers/gradient.dart';
import 'auth_form.dart';

class AuthenticationDialog extends StatelessWidget {
  const AuthenticationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Center(
        child: Container(
          height: 550,
          decoration: BoxDecoration(
            gradient: linearGradientColors(
              [
                Colors.white,
                Colors.white70,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 6),
                color: boxShadowColor,
                blurRadius: 12,
              )
            ],
          ),
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: [
              Positioned(
                top: ResponsiveWidget.isExtraSmallScreen(context) ? 0 : 5,
                right: ResponsiveWidget.isExtraSmallScreen(context) ? 0 : 5,
                child: InkWell(
                  mouseCursor: SystemMouseCursors.click,
                  onTap: () {
                    Navigator.pop(context, false);
                  },
                  child: const Icon(
                    PhosphorIcons.xCircleFill,
                    color: Colors.red,
                    size: 32,
                  ),
                ),
              ),
              AuthenticationForm()
            ],
          ),
        ),
      ),
    );
  }
}
