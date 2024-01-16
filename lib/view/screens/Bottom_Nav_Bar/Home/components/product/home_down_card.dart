import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/models/down_card_model.dart';

class HomeDownCard extends StatelessWidget {
  final UpCardData upCardData;
  const HomeDownCard({
    super.key,
    required this.upCardData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        width: 165,
        decoration: BoxDecoration(
            border: Border.all(width: .5),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  upCardData.image ?? '',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    upCardData.tilte ?? '' ,
                    style: const TextStyle(
                      color: Color(0xff181725),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    upCardData.subTitle ?? '',
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 16,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                       upCardData.price ?? '',
                        style: const TextStyle(
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
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
