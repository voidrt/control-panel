import 'package:control_panel_flutter/themes/paddings.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(largura: 10.0, codigoBarra: "AB1"),
    Product(largura: 13.0, codigoBarra: "AB2"),
    Product(largura: 14.0, codigoBarra: "AB3"),
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
              columns: const [
                DataColumn(
                  label: Text('Codigo'),
                ),
                DataColumn(
                  label: Text('Largura'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      Text('data'),
                    ),
                    DataCell(
                      Text('more data'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  DateTime? date;
  String? codigoBarra;
  String? codigoRef;
  double? comprimento;
  double? largura;

  Product({
    required this.codigoBarra,
    required this.largura,
    this.codigoRef,
    this.comprimento,
    this.date,
  });
}
