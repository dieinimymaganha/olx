import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:xlo/models/ad.dart';
import 'package:xlo/screens/product/product_screen.dart';

class ProductTile extends StatelessWidget {
  final Ad ad;

  ProductTile(this.ad);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProductScreen(ad)));
      },
      child: Container(
        height: 135,
        margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
        child: Card(
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 135,
                width: 127,
                child: Image.file(
                  ad.images[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ad.title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'R\$ ${numToString(ad.price)}',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),
                      ),
                      Text(
                        '${ad.address.district}, ${ad.address.city}',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String numToString(num number) {
    return NumberFormat('###,##0.00', 'pt-br')
        .format(double.parse(number.toStringAsFixed(2)));
  }
}
