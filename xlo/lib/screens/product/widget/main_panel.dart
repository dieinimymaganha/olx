import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:xlo/helpers/format_field.dart';
import 'package:xlo/models/ad.dart';

class MainPanel extends StatelessWidget {
  final Ad ad;

  MainPanel(this.ad);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 24, bottom: 24),
          child: Text(
            'R\$ ${numToString(ad.price)}',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 34,
              letterSpacing: 2.8,
              color: Colors.grey[800],
            ),
          ),
        ),
        Text(ad.title, style: TextStyle(
          fontSize: 18,
          letterSpacing: 1,
          fontWeight: FontWeight.w400
        ),),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 18),
          child: Text(
            'Publicado em ${dateToString(ad.dateCreated)}',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.grey[600]
            ),
          ),
        )

      ],
    );
  }


}
