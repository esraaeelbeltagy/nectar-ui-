import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_search.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Beverages/beverages.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Explore/components/explore_item.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Explore/models/explore_model.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Find Products',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchField(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: findProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //maxCrossAxisExtent: 200,
                    childAspectRatio: 10 / 13,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) => InkWell(
                  child: OneItem(exploreModel: findProducts[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Beverages()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
