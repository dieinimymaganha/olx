import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HidePhoneWidget extends FormField<bool> {
  HidePhoneWidget({FormFieldSetter<bool> onSaved, bool inititalValue})
      : super(
      initialValue:inititalValue,
      onSaved: onSaved,
      builder: (state) {
          return Padding(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Checkbox(
                    value: state.value,
                    onChanged: (b) {
                      state.didChange(b);
                    }),
                const Text('Ocultar o meu telefone neste anúncio')
              ],
            ),
          );
        });
}
