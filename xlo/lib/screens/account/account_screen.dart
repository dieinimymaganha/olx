import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/custom_drawer.dart';
import 'package:xlo/screens/edit_account.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MIniha conta'),
        actions: <Widget>[
          FlatButton(
            child: Text('EDITAR'),
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EditAccount()));
            },

          )
        ],
        elevation: 0,
      ),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: const Text(
              'Dieinimy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Meus anuncios',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
            trailing: Icon(Icons.keyboard_arrow_right),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          ListTile(
            title: Text(
              'Favoritos',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            onTap: () {},
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
