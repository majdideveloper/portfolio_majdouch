import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'package:portfolio_majdouch/utils/helper_padding.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ItemSkills extends StatelessWidget {
  final String link;
  final String name;
  double size;
  ItemSkills({
    Key? key,
    required this.link,
    required this.name,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: Image.asset(link),
        ),
        microPaddingVert,
        Text(name)
      ],
    );
  }
}
