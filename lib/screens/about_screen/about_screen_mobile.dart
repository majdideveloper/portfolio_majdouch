import 'package:flutter/material.dart';
import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:portfolio_majdouch/utils/helper_textstyle.dart';
import 'package:portfolio_majdouch/widgets/widget_item_work.dart';

class AboutScreenMobile extends StatelessWidget {
  const AboutScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: ListView(
        children: const [
          Text(
            "About Me",
            style: boldTitleStyle,
          ),
          microPaddingVert,
          Text(
            """Software Engineer has experience in mobile development using flutter and dart. I have a deep interest in competitive programming and problem-solving. I'm a great communicator, and a dynamic person through my experience in Holberton school I have worked on a lot of projects that made me technically confident however I still aiming to learn more and that is why I'm looking to develop my knowledge skills in a good company""",
            style: textStyle,
          ),
          smallPaddingVert,
          Text(
            "Work Experience",
            style: boldTitleStyle,
          ),
          microPaddingVert,
          WidgetItemWork(
            title: "Full-Stack Developer",
            company: "Koofin",
            place: "Tunis",
            date: "June - August 2023",
            type: "Full_time",
          ),
          WidgetItemWork(
            title: "Teacher Assistant Flutter",
            company: "Campu",
            place: "Tunis",
            date: "January - June 2023",
            type: "Full_time",
          ),
          mediumPaddingVert,
          Text(
            "Education",
            style: boldTitleStyle,
          ),
          microPaddingVert,
          WidgetItemWork(
            title: "Full-Stack Developer",
            company: "Holberton School Tunis",
            place: "Tunis",
            date: "May 2022 - Present",
            type: "Remote",
          ),
          WidgetItemWork(
            title: "Advanced Technician in Marketing and Multimedia.",
            company: "CSFT City El Khadra",
            place: "Tunis",
            date: "Feb 2020 - Feb 2023",
            type: "Remote",
          ),
        ],
      ),
    );
  }
}
