import 'package:control_panel_flutter/core/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = Provider<List<Product>>(
  (ref) => [
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
  ],
);
