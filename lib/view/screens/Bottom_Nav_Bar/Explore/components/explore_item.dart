import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Explore/models/explore_model.dart';

class OneItem extends StatelessWidget {
  final ExploreModel exploreModel;

  const OneItem({
    super.key,
    required this.exploreModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      // height: 200,
      // width: 175,
      decoration: BoxDecoration(
        color: exploreModel.inColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: exploreModel.outColor!,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Image.asset(exploreModel.image ?? '')),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 1,
            child: Text(
              exploreModel.title ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
