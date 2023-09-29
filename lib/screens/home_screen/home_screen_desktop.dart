import 'package:flutter/material.dart';
import 'package:portfolio_majdouch/utils/colors.dart';
import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:portfolio_majdouch/widgets/button_resume.dart';
import 'package:portfolio_majdouch/widgets/widget_image_home.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../utils/helper_textstyle.dart';
import '../../widgets/social_media_widget.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                smallPaddingVert,
                Text(
                  "Hi 👋,",
                  style: boldTitleStyle,
                ),
                Text(
                  "My Name is",
                  style: boldTitleStyle,
                ),
                GradientText(
                  'Majdi aribi',
                  style: const TextStyle(
                    fontSize: 36.0,
                  ),
                  colors: const [
                    Colors.blue,
                    Colors.red,
                  ],
                ),
                Text(
                  "nickname",
                  style: boldTitleStyle,
                ),
                GradientText(
                  'Majdouch',
                  style: const TextStyle(
                    fontSize: 36.0,
                  ),
                  colors: const [
                    Colors.blue,
                    Colors.red,
                  ],
                ),
                Text(
                  "I build things for",
                  style: boldTitleStyle,
                ),
                GradientText(
                  "Web and Mobile",
                  style: const TextStyle(
                    fontSize: 36.0,
                  ),
                  colors: const [
                    Colors.blue,
                    Colors.red,
                  ],
                ),
                smallPaddingVert,
                const ButtonResume(),
                smallPaddingVert,
                SocialMediaWidget(
                  position: WrapAlignment.start,
                ),
              ],
            ),
          ),
          WidgetImageHome(
              size:
                  //  MediaQuery.of(context).size.width > 900
                  //     ? MediaQuery.of(context).size.height / 1.5
                  MediaQuery.of(context).size.width / 2.2)
        ],
      ),
    );
  }
}
