class FavModel {
  String? image;
  String? tilte;
  String? subTitle;
  String? price;
  FavModel({
    required this.image,
    required this.tilte,
    required this.subTitle,
    required this.price,
  });
}

List<FavModel> favList = [
  FavModel(
    image: 'assets/images/Favourite/Diet Coke.png',
    tilte: 'Diet Coke',
    subTitle: '355ml, Price',
    price: '\$1.99',
  ),
  FavModel(
    image: 'assets/images/Favourite/Sprite Can.png',
    tilte: 'Sprite Can',
    subTitle: '325ml, Price',
    price: '\$1.50',
  ),
  FavModel(
    image: 'assets/images/Favourite/Apple Juice.png',
    tilte: 'Apple & Grape Juice',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),

  
 FavModel(
    image: 'assets/images/Favourite/Coca Cola Can.png',
    tilte: 'Coca Cola Can',
    subTitle: '325ml, Price',
    price: '\$4.99',
  ),
 FavModel(
    image: 'assets/images/Favourite/Pepsi Can.png',
    tilte: 'Pepsi Can',
    subTitle: '330ml, Price',
    price: '\$4.99',
  ),
  
];
