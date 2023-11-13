import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/helper_textstyle.dart';

class WidgetProject extends StatelessWidget {
  final String image;
  final String title;
  final String describtion;
  final String techStack;
  final Uri linkGithub;
  final Uri linkPreView;
  final bool boolPreView;

  const WidgetProject({
    Key? key,
    required this.image,
    required this.title,
    required this.describtion,
    required this.techStack,
    required this.linkGithub,
    required this.linkPreView,
    required this.boolPreView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 580,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Color of the shadow
              spreadRadius: 5, // Spread radius of the shadow
              blurRadius: 3, // Blur radius of the shadow
              offset: const Offset(0, 3), // Offset of the shadow
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TitleStyle,
                    maxLines: 1,
                  ),
                  microPaddingVert,
                  Text(
                    describtion,
                    style: textStyle,
                    maxLines: 3,
                  ),
                  smallPaddingVert,
                  Text(
                    "Tech stack : $techStack",
                    style: textStyle,
                    maxLines: 2,
                  ),
                  smallPaddingVert,
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      boolPreView
                          ? Row(
                              children: [
                                const FaIcon(FontAwesomeIcons.link),
                                TextButton(
                                    onPressed: () {
                                      _launchUrl(linkPreView);
                                    },
                                    child: const Text("Live Preview"))
                              ],
                            )
                          : const SizedBox(),
                      Row(
                        children: [
                          const FaIcon(FontAwesomeIcons.github),
                          TextButton(
                              onPressed: () {
                                _launchUrl(linkGithub);
                              },
                              child: const Text("View Code"))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(
    Uri link,
  ) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $link');
    }
  }
}
