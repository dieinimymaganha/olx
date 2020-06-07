import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';
import 'package:xlo/screens/filter/widget/section_title.dart';

import 'widget/order_by_field.dart';
import 'widget/price_range_field.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Filtrar Busca'),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                const SectionTitle(title: 'Order por'),
                OrderByField(
                  initialValue: OrderBy.DATE,
                  onSaved: (v){

                  },
                ),

                const SectionTitle(title: 'Preço (R\$)'),
                PriceRangeField(),
                const SectionTitle(title: 'Tipo de anunciante'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
