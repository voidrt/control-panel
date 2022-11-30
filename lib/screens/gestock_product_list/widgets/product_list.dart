import 'package:control_panel_flutter/core/models/product_model.dart';
import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);

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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingMeasure.defaultSize),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: DataTable(
              columns: [
                for (int i = 0; i < mockProperties.length; ++i)
                  _buildDataColumn(mockProperties[i]),
              ],
              rows: _buildDataRows(),
            ),
          ),
        ],
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
                  '${product.data}',
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
