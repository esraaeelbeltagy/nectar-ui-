class UpCardData {
  String? image;
  String? tilte;
  String? subTitle;
  String? price;
  UpCardData({
    required this.image,
    required this.tilte,
    required this.subTitle,
    required this.price,
  });
}

//for Exclusive Offer

List<UpCardData> exclusiveOffer = [
  UpCardData(
    image: 'assets/images/Home/Exclusive Offer/Banana.png',
    tilte: 'Organic Bananas',
    subTitle: '7pcs, Priceg',
    price: '\$1.99',
  ),
  UpCardData(
    image: 'assets/images/Home/Exclusive Offer/Apple.png',
    tilte: 'Red Apple',
    subTitle: '1kg, Priceg',
    price: '\$4.99',
  ),
   UpCardData(
    image: 'assets/images/Home/Exclusive Offer/Banana.png',
    tilte: 'Organic Bananas',
    subTitle: '7pcs, Priceg',
    price: '\$1.99',
  ),
];


// for Best Selling
List<UpCardData> bestSelling = [
 UpCardData(
    image: 'assets/images/Home/Best Selling/Papper.png',
    tilte: 'Bell Papper',
    subTitle: '7pcs, Priceg',
    price: '\$1.99',
  ),
  UpCardData(
    image: 'assets/images/Home/Best Selling/Ginger.png',
    tilte: 'Ginger',
    subTitle: '1kg, Priceg',
    price: '\$4.99',
  ),
   UpCardData(
    image: 'assets/images/Home/Best Selling/Papper.png',
    tilte: 'Bell Papper',
    subTitle: '7pcs, Priceg',
    price: '\$1.99',
  ),

];

//for Groceries
List<UpCardData> groceries = [

   UpCardData(
    image: 'assets/images/Home/Groceries/Meat.png',
    tilte: 'Beef Bone',
    subTitle: '1kg, Priceg',
    price: '\$4.99',
  ),
  UpCardData(
    image: 'assets/images/Home/Groceries/Chicken.png',
    tilte: 'Broiler Chicken',
    subTitle: '1kg, Priceg',
    price: '\$4.99',
  ),
  
   UpCardData(
    image: 'assets/images/Home/Groceries/Meat.png',
    tilte: 'Beef Bone',
    subTitle: '1kg, Priceg',
    price: '\$4.99',
  ),

];
