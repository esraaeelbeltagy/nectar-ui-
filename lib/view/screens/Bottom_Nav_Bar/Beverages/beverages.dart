import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grocery/view/screens/Bottom_Nav_Bar/Beverages/components/beverages_item.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Beverages/models/beverages_model.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/search.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Text(
                    'Beverages',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  child: const Icon(
                    Icons.filter_list_sharp,
                    size: 22,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: beverages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //maxCrossAxisExtent: 200,
                    childAspectRatio: 12 / 21,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) =>
                    BeveragesItem(beveragesModel: beverages[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
