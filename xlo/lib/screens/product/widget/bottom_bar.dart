import 'package:flutter/material.dart';
import 'package:xlo/models/ad.dart';
import 'package:xlo/screens/edit_account.dart';

class BottomBar extends StatelessWidget {
  final Ad ad;

  BottomBar(this.ad);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 26),
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: const BorderRadius.all(Radius.circular(19))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.black45))),
                      child: Text(
                        'Ligar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      'Chat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 249, 249, 1),
                border: Border(top: BorderSide(color: Colors.grey[400]))),
            height: 38,
            alignment: Alignment.center,
            child: Text(
              'Dieinimy (Anunciante)',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
