import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/product/home_down_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/section/section_widget.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/models/down_card_model.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Product_Detail/product_datail.dart';
import 'package:grocery/view_model/utils/navigation.dart';

class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      title: 'Exclusive Offer',
      onTap: () {},
      child: SizedBox(
        height: 250,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: exclusiveOffer.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 12),
          itemBuilder: (context, int index) => InkWell(
            child: HomeDownCard(upCardData: exclusiveOffer[index]),
            onTap: (){
              Navigation.push(context , ProductDatail());
            },
          ),
        ),
      ),
    );
  }
}


  // SizedBox(
      //   height: 105,
      //   child: ListView.separated(
      //       scrollDirection: Axis.horizontal,
      //       physics: const AlwaysScrollableScrollPhysics(),
      //       shrinkWrap: true,
      //       itemCount: 10,
      //       separatorBuilder: (BuildContext context, int index) =>
      //           const SizedBox(width: 20),
      //       itemBuilder: (context, int index) => const HomeUpCard()),
      // ),
     

     