import 'package:flutter/material.dart';
import 'package:grocery/view_model/utils/colors.dart';

class ExploreModel {
  String? image;
  String? title;
  Color? inColor;
  Color? outColor;
  ExploreModel({
    required this.image,
    required this.title,
    required this.inColor,
    required this.outColor,
  });
}

List<ExploreModel> findProducts = [
  ExploreModel(
    image: 'assets/images/Explore/Vegetable.png',
    title: 'Frash Fruits & Vegetable',
    inColor: AppColor.lightblue,
    outColor: AppColor.green,
  ),
  ExploreModel(
    image: 'assets/images/Explore/Cooking Oil.png',
    title: 'Cooking Oil & Ghee',
    inColor: AppColor.lightOrange,
    outColor: AppColor.orange,
  ),
  ExploreModel(
    image: 'assets/images/Explore/Meat.png',
    title: 'Meat & Fish',
    inColor: AppColor.lightPink,
    outColor:  AppColor.pink,
  ),
  ExploreModel(
    image: 'assets/images/Explore/Bakery.png',
    title: 'Bakery & Snacks',
    inColor: AppColor.lightLavinder,
    outColor: AppColor.lavinder,
  ),
  ExploreModel(
    image: 'assets/images/Explore/Eggs.png',
    title: 'Dairy & Eggs',
   inColor: AppColor.lightOrange,
    outColor: AppColor.orange,
  ),
  ExploreModel(
    image: 'assets/images/Explore/Beverages.png',
    title: 'Beverages',
    inColor: AppColor.lightblue,
    outColor: AppColor.green,
  ),
];
