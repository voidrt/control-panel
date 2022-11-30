import 'package:control_panel_flutter/core/models/product_model.dart';
import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';

class ProductsDataTable extends StatelessWidget {
  const ProductsDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        for (int i = 0; i < mockProperties.length; ++i)
          _buildDataColumn(mockProperties[i]),
      ],
      rows: _buildDataRows(),
      headingTextStyle: Theme.of(context).textTheme.bodyText2,
      dataTextStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: ColorPalette.grey200,
          ),
    );
  }

  DataColumn _buildDataColumn(String property) {
    return DataColumn(label: Text(property));
  }

  List<DataRow> _buildDataRows() {
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

final List<Product> products = [
  Product(
    largura: 10.0,
    codigoBarra: "AB1",
    codigoRef: '001',
    comprimento: 20.0,
    data: DateTime.now(),
  ),
  Product(
    largura: 13.0,
    codigoBarra: "AB2",
    codigoRef: '002',
    comprimento: 20.0,
    data: DateTime.now(),
  ),
  Product(
    largura: 14.0,
    codigoBarra: "AB3",
    codigoRef: '003',
    comprimento: 20.0,
    data: DateTime.now(),
  ),
  Product(
    largura: 14.0,
    codigoBarra: "AB4",
    codigoRef: '003',
    comprimento: 20.0,
    data: DateTime.now(),
  ),
  Product(
    largura: 14.0,
    codigoBarra: "AB5",
    codigoRef: '003',
    comprimento: 20.0,
    data: DateTime.now(),
  ),
];
