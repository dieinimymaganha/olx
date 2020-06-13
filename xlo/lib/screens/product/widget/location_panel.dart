import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xlo/models/ad.dart';

class LocationPanel extends StatelessWidget {
  final Ad ad;

  LocationPanel(this.ad);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 18, bottom: 18),
          child: Text(
            'Localização',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: const <Widget>[
                  Text('CEP'),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Municipio'),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Bairro'),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(ad.address.postalCode),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(ad.address.city),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(ad.address.district)
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
