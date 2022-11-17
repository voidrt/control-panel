import 'package:control_panel_flutter/screens/gestock_product_list/widgets/header_list.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);

  final List<Widget> products = [
    const SizedBox(
      child: Text('jaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
    ),
    const SizedBox(
      child: Text('jaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
    ),
    const SizedBox(
      child: Text('jaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingMeasure.defaultSize),
      child: Column(
        children: [
          const HeadersList(),
          ListView.builder(
            itemBuilder: ((context, index) {
              final product = products[index];
              return Container(
                child: product,
              );
            }),
          ),
        ],
      ),
    );
  }
}
