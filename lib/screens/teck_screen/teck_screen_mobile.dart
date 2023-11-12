import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_majdouch/widgets/item_skills.dart';

import '../../utils/helper_padding.dart';
import '../../utils/helper_textstyle.dart';

class TeckScreenMobile extends StatelessWidget {
  const TeckScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "My Tech Stack",
            style: boldTitleStyle,
          ),
          smallPaddingVert,
          const Text(
            "Technologies I've been working with recently",
            style: textStyle,
          ),
          mediumPaddingVert,
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              ItemSkills(
                size: (MediaQuery.of(context).size.width / 5),
                name: "C lan",
                link: "assets/images/cLang.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Python",
                link: "assets/images/python.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Html",
                link: "assets/images/html.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Css",
                link: "assets/images/css.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Dart",
                link: "assets/images/dart.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Flutter",
                link: "assets/images/flutter.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "JavaScript",
                link: "assets/images/javascript.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "React",
                link: "assets/images/react.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "git",
                link: "assets/images/git.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Github",
                link: "assets/images/github.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Linux",
                link: "assets/images/linux.png",
              ),
              ItemSkills(
                size: MediaQuery.of(context).size.width / 5,
                name: "Vs Code",
                link: "assets/images/visual-studio-code.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
