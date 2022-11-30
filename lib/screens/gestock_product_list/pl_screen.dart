import 'package:control_panel_flutter/screens/gestock_product_list/widgets/product_list.dart';
import 'package:control_panel_flutter/widgets/outlined_text_container.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return OutlinedTextContainer(
      constraints: constraints,
      text: 'Lista de Produtos',
      child: ProductList(),
    );
  }
}
