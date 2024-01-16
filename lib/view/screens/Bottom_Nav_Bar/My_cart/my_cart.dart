import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/My_cart/components/cart_item.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/My_cart/models/cart_model.dart';
import 'package:grocery/view_model/utils/colors.dart';

import 'components/check_out.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                'My cart',
                // textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            // const SizedBox(
            //   height: 20,
            // ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 0, right: 20, left: 20),
              itemBuilder: (context, index) => CartItem(
                cartModel: cartList[index],
              ),
              itemCount: cartList.length,
              separatorBuilder: (context, index) => const Divider(),
            ),

            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: 'Go to Checkout',
                color: const Color(0xff53B175),
                textColor: Colors.white,
                clickCallback: () {
                  showModalBottomSheet(
                      scrollControlDisabledMaxHeightRatio: 25,
                      backgroundColor: const Color(0xffF2F3F2),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      )),
                      context: context,
                      builder: (context) {
                        return const CheckOutWidget();
                      });
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ]),
        ),
      ),
    );
  }
}
