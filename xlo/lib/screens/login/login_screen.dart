import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrar'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 11),
              child: Text(
                'Acessar com e-mail',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[900]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 4),
              child: Text(
                'E-mail',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            StreamBuilder(
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  decoration:
                      InputDecoration(border: const OutlineInputBorder()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 4, top: 26),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Senha',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                    onTap: () {
//                      Navigator.of(context).push(MaterialPageRoute(
//                          builder: (context) => RecoveryScreen()));
                    },
                  )
                ],
              ),
            ),
            StreamBuilder(
              builder: (context, snapshot) {
                return TextField(
                  autocorrect: false,
                  obscureText: true,
                  decoration:
                  InputDecoration(border: const OutlineInputBorder()),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
