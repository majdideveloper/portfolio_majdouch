import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../utils/colors.dart';
import '../../utils/helper_padding.dart';
import '../../utils/helper_textstyle.dart';
import '../../widgets/button_resume.dart';
import '../../widgets/social_media_widget.dart';

class ContactScreenMobile extends StatelessWidget {
  const ContactScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "For any questions or collaboration please mail us :",
              style: boldTitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: GradientText(
              'majdiaribi@outlook.com',
              style: const TextStyle(
                fontSize: 36.0,
              ),
              textAlign: TextAlign.center,
              colors: [
                blueColorGra,
                roseColorGra,
              ],
            ),
          ),
          smallPaddingVert,
          Center(child: const ButtonResume()),
          smallPaddingVert,
          Center(child: SocialMediaWidget()),
        ],
      ),
    );
  }
}
