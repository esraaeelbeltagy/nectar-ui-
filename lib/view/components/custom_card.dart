
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: 173,
        decoration: BoxDecoration(
            border: Border.all(width: .5),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/banana.png')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Organic Bananas',
              style: TextStyle(
                color: Color(0xff181725),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '7pcs, Priceg',
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 16,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$4.99',
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff53B175),
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}