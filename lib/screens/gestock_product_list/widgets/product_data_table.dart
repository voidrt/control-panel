import 'package:control_panel_flutter/core/models/product_model.dart';
import 'package:control_panel_flutter/core/providers/product_provider.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductsDataTable extends ConsumerWidget {
  const ProductsDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productProvider);
    return DataTable(
      columns: [
        for (int i = 0; i < mockProperties.length; ++i)
          _buildDataColumn(mockProperties[i]),
      ],
      rows: _buildDataRows(products),
      headingTextStyle: Theme.of(context).textTheme.bodyText2,
      dataTextStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: ColorPalette.grey200,
          ),
    );
  }

  DataColumn _buildDataColumn(String property) {
    return DataColumn(label: Text(property));
  }

  List<DataRow> _buildDataRows(List<Product> products) {
    return products
        .map(
          (product) => DataRow(
            cells: [
              DataCell(
                Text('${product.codigoBarra}'),
              ),
              DataCell(
                Text(
                  '${product.codigoRef}',
                ),
              ),
              DataCell(
                Text(
                  '${product.comprimento}',
                ),
              ),
              DataCell(
                Text(
                  '${product.largura}',
                ),
              ),
              DataCell(
                Text(
                  '${product.data!.month}/${product.data!.year}',
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}

final mockProperties = [
  'Codigo de Barra',
  'Codigo de Referencia',
  'Comprimento',
  'Largura',
  'Data',
];
