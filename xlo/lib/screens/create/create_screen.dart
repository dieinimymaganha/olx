import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/custom_drawer.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Inserir Anúncio'),

      ),
      drawer: CustomDrawer(),
    );
  }
}
