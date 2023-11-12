import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:portfolio_majdouch/utils/colors.dart';
import 'package:portfolio_majdouch/utils/my_links.dart';

class SocialMediaWidget extends StatelessWidget {
  WrapAlignment? position;
  SocialMediaWidget({
    Key? key,
    this.position = WrapAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: position ?? WrapAlignment.center,
      children: [
        ItemSocialMediaLink(
          link: urlLinkedin,
          icon: FontAwesomeIcons.linkedin,
          tooltip: "Linkedin",
        ),
        ItemSocialMediaLink(
          link: urlGithub,
          icon: FontAwesomeIcons.github,
          tooltip: "Github",
        ),
        ItemSocialMediaLink(
          link: urlTiktok,
          icon: FontAwesomeIcons.tiktok,
          tooltip: "Tiktok",
        ),
        ItemSocialMediaLink(
          link: urlInstagram,
          icon: FontAwesomeIcons.instagram,
          tooltip: "Instagram",
        ),
        ItemSocialMediaLink(
          link: urlYoutube,
          icon: FontAwesomeIcons.youtube,
          tooltip: "Youtube",
        ),
        ItemSocialMediaLink(
          link: urlEmail,
          icon: Icons.mail,
          tooltip: "majdiaribi@outtlook.com",
        ),
      ],
    );
  }
}

class ItemSocialMediaLink extends StatelessWidget {
  final IconData icon;
  final Uri link;
  final String tooltip;
  const ItemSocialMediaLink({
    Key? key,
    required this.icon,
    required this.link,
    required this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      hoverColor: blueColor.withOpacity(0.2),
      color: blueColor,
      onPressed: () {
        _launchUrl(link);
      },
      icon: Icon(
        icon,
      ),
    );
  }

  Future<void> _launchUrl(
    Uri link,
  ) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $urlLinkedin');
    }
  }
}
