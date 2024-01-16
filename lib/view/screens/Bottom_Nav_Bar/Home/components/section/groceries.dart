import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/product/home_down_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/product/home_up_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/section/section_widget.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/models/down_card_model.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/models/up_card_model.dart';

class Groceries extends StatelessWidget {
  const Groceries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      title: 'Groceries',
      onTap: () {},
      child: Column(
        children: [
      
        
          SizedBox(
            height: 105,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: card2.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 20),
                itemBuilder: (context, int index) =>  HomeUpCard(upCardModel: card2[index],)),
          ),
          const SizedBox(height: 20,),
              SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: groceries.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 12),
              itemBuilder: (context, int index) =>  HomeDownCard(upCardData: groceries[index]),
            ),
          ),
        ],
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
     

     