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
