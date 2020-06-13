import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo/models/user.dart';
import 'package:xlo/screens/edit_account/widget/user_type_widget.dart';

class EditAccount extends StatefulWidget {
  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {

  final User _user = User(name: 'Dieinimy', phone: '041 99163-9199');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar conta'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          UserTypeWidget(
            initialValue: _user.userType,
            onSaved: (s){},
          ),
          TextFormField(
            initialValue: _user.name,
            decoration: _buildDecotarion('Nome *'),
            validator: (name) {
              if (name.length < 6) {
                return 'Nome inválido';
              }
              return null;
            },
            onSaved: (name) {},
          ),
          TextFormField(
            initialValue: _user.phone,
            decoration: _buildDecotarion('Telefone *'),
            keyboardType: TextInputType.phone,
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly,
//              TelefoneInputFormatter(digito_9: true),
            ],
            validator: (name) {
              if (name.length < 15) {
                return 'Telefone inválido';
              }
              return null;
            },
            onSaved: (phone) {},
          ),
          TextFormField(
            obscureText: true,
            decoration: _buildDecotarion('Nova senha'),
            validator: (pass) {
              if (pass.isEmpty) {
                return null;
              }
              if (pass.length < 6) {
                return 'Senha muito curta';
              }
              return null;
            },
            autovalidate: true,
          ),
          TextFormField(
            obscureText: true,
            decoration: _buildDecotarion('Repita a senha'),
            validator: (pass) {
              if (pass.isEmpty) {
                return null;
              }
              if (pass.length < 6) {
                return 'Senha muito curta';
              }
              return null;
            },
            autovalidate: true,
          ),
        ],
      ),
    );
  }

  InputDecoration _buildDecotarion(String label) {
    return InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.only(left: 16, bottom: 8, top: 8));
  }
}
