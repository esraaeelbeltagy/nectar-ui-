class CartModel {
  String? image;
  String? tilte;
  String? subTitle;
  String? price;
  CartModel({
    required this.image,
    required this.tilte,
    required this.subTitle,
    required this.price,
  });
}

List<CartModel> cartList = [

  CartModel(
    image: 'assets/images/Cart/Papper.png',
    tilte: 'Bell Pepper Red',
    subTitle: '1kg, Price',
    price: '\$4.99',
  ),
  CartModel(
    image: 'assets/images/Cart/Eggs.png',
    tilte: 'Egg Chicken Red',
    subTitle: '4pcs, Price',
    price: '\$1.99',
  ),

  
 CartModel(
    image: 'assets/images/Cart/Banana.png',
    tilte: 'Organic Bananas',
    subTitle: '12kg, Price',
    price: '\$3',
  ),
 CartModel(
    image: 'assets/images/Cart/Grnger.png',
    tilte: 'Ginger',
    subTitle: '250gm, Price',
    price: '\$2.99',
  ),
  
];
