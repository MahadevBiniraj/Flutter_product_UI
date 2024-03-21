class List2model {
  final String propic;
  final String textname;
  final String price;
  final String priceoff;
  final List<String> productname;
  final String rating;
  List<String> productvalue;

  List2model(
      {required this.propic,
      required this.productname,
      required this.productvalue,
      required this.rating,
      required this.textname,
      required this.price,
      required this.priceoff});
}
