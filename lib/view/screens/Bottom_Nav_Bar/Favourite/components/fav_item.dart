// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/models/fav_model.dart';

class FavItem extends StatelessWidget {
  final FavModel favModel ;
  const FavItem({
    Key? key,
    required this.favModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(favModel.image ?? '' )),
           Expanded(
            flex: 4,
            child: Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    favModel.tilte ?? '',
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    favModel.subTitle ?? '',
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Expanded(
            flex: 2,
             child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      favModel.price?? '',
                      // textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ],
                       ),
           )
        ],
      ),
    );
  }
}
