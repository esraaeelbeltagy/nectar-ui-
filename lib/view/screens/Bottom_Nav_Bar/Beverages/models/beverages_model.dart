class BeveragesModel {
  String? image;
  String? tilte;
  String? subTitle;
  String? price;
  BeveragesModel({
    required this.image,
    required this.tilte,
    required this.subTitle,
    required this.price,
  });
}

List<BeveragesModel> beverages = [
  BeveragesModel(
    image: 'assets/images/Beverages/Diet Coke.png',
    tilte: 'Diet Coke',
    subTitle: '355ml, Price',
    price: '\$1.99',
  ),
  BeveragesModel(
    image: 'assets/images/Beverages/Sprite Can.png',
    tilte: 'Sprite Can',
    subTitle: '325ml, Price',
    price: '\$1.50',
  ),
  BeveragesModel(
    image: 'assets/images/Beverages/Apple juice.png',
    tilte: 'Apple & Grape Juice',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),
 BeveragesModel(
    image: 'assets/images/Beverages/Orenge Juice.png',
    tilte: 'Orenge Juice',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),
  
 BeveragesModel(
    image: 'assets/images/Beverages/Coca Cola Can.png',
    tilte: 'Coca Cola Can',
    subTitle: '325ml, Price',
    price: '\$4.99',
  ),
 BeveragesModel(
    image: 'assets/images/Beverages/Pepsi Can.png',
    tilte: 'Pepsi Can',
    subTitle: '330ml, Price',
    price: '\$4.99',
  ),
  
];
