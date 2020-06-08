import 'package:flutter/material.dart';
import 'package:xlo/blocs/login/button_state.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 50,
      child: StreamBuilder<ButtonState>(
        builder: (context, snapshot) {
          return RaisedButton(
            color: Colors.pink,
            disabledColor: Colors.pink.withAlpha(150),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: snapshot.data.enabled ? () {} : null,
            child: Text(
              'Entrar',
              style: snapshot.data.loaging
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
