import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo/models/address.dart';

class CepField extends StatefulWidget {
  final InputDecoration decoration;
  final FormFieldSetter<Address> onSaved;

  @override
  _CepFieldState createState() => _CepFieldState();

  CepField({this.decoration, this.onSaved});
}

class _CepFieldState extends State<CepField> {
  InputDecoration get decotarion => widget.decoration;
  FormFieldSetter<Address> get onSaved => widget.onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: decotarion,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            CepInputFormatter()
          ],
          onSaved: (c){
            onSaved(Address());
          },
        ),
      ],
    );
  }
}
