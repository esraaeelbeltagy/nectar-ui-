
import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/My_cart/models/cart_model.dart';

class CartItem extends StatelessWidget {
  final CartModel cartModel ;
  const CartItem({
    super.key, required this.cartModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(cartModel.image ?? '')),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    cartModel.tilte ?? '',
                    // textAlign: TextAlign.center,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    cartModel.subTitle ?? '',
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xffE2E2E2))),
                        child: const Center(child: Icon(Icons.add)),
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xffE2E2E2),
                          ),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.add,
                          color: Color(0xff53B175),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Expanded(
            flex: 2,
             child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.close_rounded,
                  color: Color.fromARGB(255, 181, 180, 180),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  cartModel.price ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
                       ),
           ),
        ],
      ),
    );
  }
}
