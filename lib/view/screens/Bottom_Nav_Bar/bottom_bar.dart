import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Account/account.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Explore/explore.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/favourite.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/My_cart/my_cart.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> listPage = [
    const Home(),
    const Explore(),
    const MyCart(),
    const Favorurite(),
    const Account()
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPage.elementAt(selectedTab),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff53B175),
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          //showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
          
            
          ),
          currentIndex: selectedTab,
          onTap: (index) {
            setState(() {
              selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'favoruite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ]),
    );
  }
}
