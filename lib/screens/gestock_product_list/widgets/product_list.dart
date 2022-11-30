import 'package:control_panel_flutter/screens/gestock_product_list/widgets/product_data_table.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PaddingMeasure.pp),
      child: const SingleChildScrollView(
        child: ProductsDataTable(),
      ),
    );
  }
}
