// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_card.dart';
import 'package:grocery/view/components/custom_search.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/section/best_selling.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/section/exclusive_offer.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/product/home_down_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/product/home_up_card.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/components/section/groceries.dart';
import 'package:grocery/view_model/utils/assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  child: Image.asset(
                    AppAssets.carrot,
                    width: 30,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_pin),
                    Text(
                      'Dhaka, Banassre',
                      style: TextStyle(
                          color: Color(
                            0xff4C4F4D,
                          ),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SearchField(),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(AppAssets.banner),
                const SizedBox(
                  height: 20,
                ),
                const ExclusiveOffer(),
                const SizedBox(
                  height: 20,
                ),
                const BestSelling(),
                const SizedBox(
                  height: 20,
                ),
                const Groceries(),
                const SizedBox(
                  height: 20,
                ),
              ]),
        ),
      ),
    );
  }
}





                // SizedBox(height: 220,
                // child: ListView.separated(
                //   shrinkWrap: true,
                //   scrollDirection:Axis.horizontal ,
                //   itemBuilder: (context,index)=>HomeDownCard(), 
                // separatorBuilder: (context,index)=>const SizedBox(width: 10),
                //  itemCount: 3),
                // ),
          
                
                // Expanded(
                //   child: ListView.separated(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.vertical,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemCount: 3,
                //     separatorBuilder: (BuildContext context, int index) =>
                //         const SizedBox(height: 10,),
                //     itemBuilder: (BuildContext context, int index) => const Div(),
                //   ),
                // ),