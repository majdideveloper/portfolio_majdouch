import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WidgetImageHome extends StatelessWidget {
  double size;
  WidgetImageHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            blueColorGra,
            roseColorGra,
          ],
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/profilemajdi.jpeg"),
            fit: BoxFit.fitHeight,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
