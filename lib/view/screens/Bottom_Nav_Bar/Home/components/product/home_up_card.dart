// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/models/up_card_model.dart';

class HomeUpCard extends StatelessWidget {
  final UpCardModel upCardModel;
  const HomeUpCard({
    Key? key,
    required this.upCardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 105,
      width: 240,
      decoration: BoxDecoration(
        color: upCardModel.color,//
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(upCardModel.image ?? ''),
          const SizedBox(
            width: 20,
          ),
           Expanded(
              child: Text(
            upCardModel.name ?? '',
            style:const  TextStyle(
                color: Color(0xff3E423F),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ))
        ],
      ),
    );
  }
}
