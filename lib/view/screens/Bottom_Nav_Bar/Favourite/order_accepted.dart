import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/General/mask.png',
              ),
              fit: BoxFit.fitHeight),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset('assets/images/Accepted/accepted.png'),
            const SizedBox(
              height: 25,
            ),
            const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your Order has been accepted',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Your items has been placcd and is on it’s way to being processed',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            CustomButton(
              text: 'Track Order',
              color: const Color(0xff53B175),
              textColor: Colors.white,
              clickCallback: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Back to home',
              color: Colors.white,
              textColor: Colors.black,
              clickCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
