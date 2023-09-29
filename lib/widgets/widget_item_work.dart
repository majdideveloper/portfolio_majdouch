import 'package:flutter/material.dart';

import '../utils/helper_padding.dart';
import '../utils/helper_textstyle.dart';

class WidgetItemWork extends StatelessWidget {
  final String title;
  final String company;
  final String place;
  final String date;
  final String type;

  const WidgetItemWork({
    Key? key,
    required this.title,
    required this.company,
    required this.place,
    required this.date,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    title,
                    style: TitleStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                microPaddingHor,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Text(type),
                ),
                microPaddingHor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.date_range_outlined),
                        Text(
                          date,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.business),
                        Text(company),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text(place),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Icon(Icons.date_range_outlined),
            //         Text(
            //           "Sep 2021 - Dec 2021",
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
