import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/components/fav_item.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/models/fav_model.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/order_accepted.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';

class Favorurite extends StatelessWidget {
  const Favorurite({super.key});

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
                'Favorurite',
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
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.only(bottom: 0, top: 0, right: 20, left: 20),
              itemBuilder: (context, index) =>
                  FavItem(favModel: favList[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: favList.length,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    text: 'Add All To Cart',
                    color: const Color(
                      0xff53B175,
                    ),
                    textColor: Colors.white,
                    clickCallback: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.white,

                              //iconPadding: EdgeInsets.symmetric(horizontal: 100),
                              icon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                        'assets/images/Favourite/Error/basket.png'),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const Text(
                                      'Oops! Order Failed',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Something went tembly wrong.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),

                              actions: [
                                CustomButton(
                                    text: 'Please Try Again',
                                    color: const Color(0xff53B175),
                                    textColor: Colors.white,
                                    clickCallback: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OrderAccepted()),
                                      );
                                    }),
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomButton(
                                    text: 'Back to home',
                                    color: Colors.grey.shade100,
                                    textColor: Colors.black,
                                    clickCallback: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BottomNavBar()),
                                      );
                                    }),
                              ],
                            );
                          });
                    })),
            const SizedBox(
              height: 100,
            ),
          ]),
        ),
      ),
    );
  }
}
