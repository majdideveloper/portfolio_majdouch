import 'package:flutter/material.dart';
import 'package:portfolio_majdouch/utils/colors.dart';

import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:portfolio_majdouch/utils/helper_textstyle.dart';
import 'package:portfolio_majdouch/utils/my_links.dart';

import 'package:url_launcher/url_launcher.dart';

class ButtonResume extends StatelessWidget {
  const ButtonResume({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      width: 220.0,
      child: ElevatedButton(
          style: ButtonStyle(
            overlayColor:
                MaterialStatePropertyAll<Color>(blueColor.withOpacity(0.2)),
          ),
          onPressed: () {
            _launchUrl(urlCv);
          },
          child: Row(
            children: [
              Icon(
                Icons.picture_as_pdf,
                color: blueColor,
              ),
              smallPaddingHor,
              Text(
                "My Resume",
                style: TitleStyle,
              ),
            ],
          )),
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
