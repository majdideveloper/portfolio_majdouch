import 'package:flutter/material.dart';
import 'package:portfolio_majdouch/utils/my_links.dart';
import 'package:portfolio_majdouch/widgets/widget_project.dart';

import '../../utils/helper_padding.dart';
import '../../utils/helper_textstyle.dart';

class ProjectsScreenMobile extends StatelessWidget {
  const ProjectsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 32, right: 32, bottom: 50),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Projects",
                style: boldTitleStyle,
              ),
              microPaddingVert,
              Text(
                "Things I've built so far",
                style: textStyle,
              ),
              smallPaddingVert,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: [
                    WidgetProject(
                      image: "assets/images/Linux-Terminal-icon.png",
                      title: "Simple Shell",
                      describtion:
                          "The shell operates in an infinite loop, executing commands until 'exit' or the end of input. It reads and parses user commands, identifying executable programs and their arguments. The shell searches for these executables in the environment and path, and then spawns child processes for their execution. After execution, it manages memory, captures output, and returns control to the loop. Shell scripting in this project supports functions, which aids in code reuse, readability, and maintenance, whether they are defined within the script or imported from external libraries. This project was a collaborative effort, with a team of three individuals working together to fully develop its functionality.",
                      linkGithub: urlGithubSimpleShell,
                      linkPreView: urlGithubSimpleShell,
                      boolPreView: false,
                      techStack: "C Language, Git, Unix Shell, VS Code",
                    ),
                    WidgetProject(
                      image: "assets/images/logobg.png",
                      title: "Rayek Social Media",
                      describtion:
                          "In our project, we implemented the Provider state-management framework, which streamlined data management. We integrated Firebase into the backend, enhancing authentication and database capabilities. Working as a team of two, we diligently resolved bugs and completed the application's development.",
                      linkGithub: urlGithubRayek,
                      linkPreView: urlPreviewRayek,
                      boolPreView: true,
                      techStack:
                          "Dart, Flutter, Firebase, Git, GitHub, VS Code",
                    ),
                    WidgetProject(
                      image: "assets/images/favicon-koofin.png",
                      title: "Koofin Tracker",
                      describtion:
                          "I specialize in full-stack development, focusing on RESTful API and micro-service development using JavaScript. On the front-end, I excel in crafting responsive user interfaces with Flutter, a modern framework. My skills extend to optimizing back-end systems, often with MongoDB databases. With a keen eye for design, I aim to create seamless user experiences. My holistic approach ensures cohesive, efficient solutions that meet user needs and technical demands.",
                      linkGithub: urlGithubKoofin,
                      linkPreView: urlPreviewKoofin,
                      boolPreView: true,
                      techStack:
                          "JavaScript,Node Js, RESTful API, MongoDB,  Git, GitHub, VS Code, ",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
