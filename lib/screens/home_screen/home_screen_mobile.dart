import 'package:flutter/material.dart';
import 'package:portfolio_majdouch/utils/colors.dart';
import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:portfolio_majdouch/widgets/button_resume.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../utils/helper_textstyle.dart';
import '../../widgets/social_media_widget.dart';
import '../../widgets/widget_image_home.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetImageHome(size: MediaQuery.of(context).size.width / 2),
          smallPaddingVert,
          const Text(
            "Hi 👋,",
            style: boldTitleStyle,
          ),
          const Text(
            "My Name is",
            style: boldTitleStyle,
          ),
          GradientText(
            'Majdi aribi',
            style: const TextStyle(
              fontSize: 36.0,
            ),
            colors: const [
              blueColorGra,
              roseColorGra,
            ],
          ),
          const Text(
            "Nickname",
            style: boldTitleStyle,
          ),
          GradientText(
            'Majdouch',
            style: const TextStyle(
              fontSize: 36.0,
            ),
            colors: const [
              blueColorGra,
              roseColorGra,
            ],
          ),
          const Text(
            "I build things for",
            style: boldTitleStyle,
          ),
          GradientText(
            "Web and Mobile",
            style: const TextStyle(
              fontSize: 36.0,
            ),
            colors: const [
              blueColorGra,
              roseColorGra,
            ],
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
