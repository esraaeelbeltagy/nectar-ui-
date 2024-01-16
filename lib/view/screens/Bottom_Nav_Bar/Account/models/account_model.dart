class AccountModel {
  String? image;
  String? title;
  AccountModel({required this.image, required this.title});
}

List<AccountModel> accountList = [
  AccountModel(image: 'assets/images/Account/account_icons/Orders icon.png', title: 'Orders'),
  AccountModel(image: 'assets/images/Account/account_icons/My Details icon.png', title: 'My Details'),
  AccountModel(image: 'assets/images/Account/account_icons/Delicery address.png', title: 'Delivery Address'),
  AccountModel(image: 'assets/images/Account/account_icons/Vector icon.png', title: 'Payment Methods'),
  AccountModel(image: 'assets/images/Account/account_icons/Promo Cord icon.png', title: 'Promo Cord'),
  AccountModel(image: 'assets/images/Account/account_icons/Bell icon.png', title: 'Notifecations '),
  AccountModel(image: 'assets/images/Account/account_icons/help icon.png', title: 'Help'),
  AccountModel(image: 'assets/images/Account/account_icons/about icon.png', title: 'About '),
];
