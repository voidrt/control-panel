class Product {
  final DateTime? data;
  final String? codigoBarra;
  final String? codigoRef;
  final double? comprimento;
  final double? largura;

  Product({
    required this.codigoBarra,
    this.data,
    this.largura = 1,
    this.codigoRef = '000',
    this.comprimento = 1,
  });
}
