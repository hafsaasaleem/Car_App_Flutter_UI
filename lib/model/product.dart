class Product {
  final String imageUrl, carLogo, carmodelname, carreview;
  final int id;

  Product({
    required this.imageUrl,
    required this.carLogo,
    required this.carmodelname,
    required this.carreview,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    imageUrl: "assets/images/Audi_A6.png",
    carLogo: "assets/images/audi_logo.png",
    carmodelname: "Audi A6",
    carreview: "3.91",
  ),
  Product(
    id: 2,
    imageUrl: "assets/images/hyundaiE.png",
    carLogo: "assets/images/hyundailogo.png",
    carmodelname: "Hyundai E.",
    carreview: "4.98",
  ),
  Product(
    id: 3,
    imageUrl: "assets/images/kia-sportage.png",
    carLogo: "assets/images/kia_sportage_logo.png",
    carmodelname: "Kia Sportage",
    carreview: "4.76",
  ),
  Product(
    id: 4,
    imageUrl: "assets/images/ford_kuga.png",
    carLogo: "assets/images/ford_kuga_logo.png",
    carmodelname: "Ford Kuga",
    carreview: "4.21",
  ),
  Product(
    id: 5,
    imageUrl: "assets/images/kia-sportage.png",
    carLogo: "assets/images/kia_sportage_logo.png",
    carmodelname: "Kia Sportage",
    carreview: "3.98",
  ),
  Product(
    id: 6,
    imageUrl: "assets/images/Audi_A6.png",
    carLogo: "assets/images/audi_logo.png",
    carmodelname: "Audi A6",
    carreview: "4.27",
  ),
];
