import 'package:flutter/material.dart';
import 'package:grocery/view_model/utils/assets.dart';
import 'package:grocery/view_model/utils/colors.dart';

class UpCardModel {
  String? image;
  String? name;
  Color? color;
  UpCardModel({this.image, this.name, this.color});
}

List<UpCardModel> card2 = [
  UpCardModel(
    image: AppAssets.pulses,
    name: ' Pulses',
    color: AppColor.lightPink,
  ),
  UpCardModel(
    image: AppAssets.rice,
    name: 'Rice',
    color: AppColor.lightblue,
  ),
];
