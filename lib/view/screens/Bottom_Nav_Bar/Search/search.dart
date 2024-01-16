import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_search.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/components/search_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/filters.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/models/search_model.dart';
import 'package:grocery/view_model/utils/navigation.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            Row(
              children: [
                const Expanded(child: SearchField()),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigation.push(context, const Filtters());
                    },
                    child: const Icon(Icons.filter_list)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: searchList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //maxCrossAxisExtent: 200,
                    childAspectRatio: 12 / 20,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) =>
                    SearchCard(searchModel: searchList[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
