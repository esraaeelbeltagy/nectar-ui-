class SearchModel {
  String? image;
  String? tilte;
  String? subTitle;
  String? price;
  SearchModel({
    required this.image,
    required this.tilte,
    required this.subTitle,
    required this.price,
  });
}

List<SearchModel> searchList = [
  SearchModel(
    image: 'assets/images/Search/Eggs_Basket.png',
    tilte: 'Egg Chicken Red',
    subTitle: '4pcs, Price',
    price: '\$1.99',
  ),
  SearchModel(
    image: 'assets/images/Search/Eggs.png',
    tilte: 'Egg Chicken White',
    subTitle: '180g, Price',
    price: '\$1.50',
  ),
  SearchModel(
    image: 'assets/images/Search/Egg Pasta .png',
    tilte: 'Egg Pasta',
    subTitle: '30gm, Price',
    price: '\$15.99',
  ),
    SearchModel(
    image: 'assets/images/Search/Nodels.png',
    tilte: 'Egg Noodles',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),
    SearchModel(
    image: 'assets/images/Search/Mayonnaise.png',
    tilte: 'Mayonnais Eggless',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),
    SearchModel(
    image: 'assets/images/Search/Egg Noodles.png',
    tilte: 'Egg Noodles',
    subTitle: '2L, Price',
    price: '\$15.99',
  ),
];
