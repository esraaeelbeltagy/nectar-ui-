import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/models/filters_model.dart';
import 'package:grocery/view_model/utils/colors.dart';
import 'package:grocery/view_model/utils/navigation.dart';

class Filtters extends StatelessWidget {
  const Filtters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigation.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Text(
                  'Filters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.filter_list_sharp,
                size: 22,
                color: Colors.black,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Categories(
                title: 'Categories',
                list: list1,
                isChecked: isChecked1,
              ),
              const SizedBox(
                height: 20,
              ),
              Categories(
                title: 'Brand',
                list: list2,
                isChecked: isChecked2,
              ),
              const Spacer(),
              CustomButton(
                text: 'Apply Filter',
                color: AppColor.green,
                textColor: Colors.white,
                clickCallback: () {},
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        )
      ]),
    );
  }
}

class Categories extends StatelessWidget {
  final List<bool> isChecked;
  final String? title;
  final List<String> list;
  Categories({
    super.key,
    required this.title,
    required this.list,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColor.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Checkbox(
                fillColor:isChecked[0] ? MaterialStateProperty.all(AppColor.green) :MaterialStateProperty.all(Colors.transparent),
                value: isChecked[0],
                onChanged: (bool? value) {
                  // This is where we update the state when the checkbox is tapped
                  setState() {
                    //isChecked = value!;
                  }
                }),
            Expanded(
              child: Text(
                list[0],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
                 fillColor:isChecked[1] ? MaterialStateProperty.all(AppColor.green) :MaterialStateProperty.all(Colors.transparent),
                value: isChecked[1],
                onChanged: (bool? value) {
                  // This is where we update the state when the checkbox is tapped
                  setState() {
                    // isChecked = value!;
                  }
                }),
            Expanded(
              child: Text(
                list[1],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
                 fillColor:isChecked[2] ? MaterialStateProperty.all(AppColor.green) :MaterialStateProperty.all(Colors.transparent),
                value: isChecked[2],
                onChanged: (bool? value) {
                  // This is where we update the state when the checkbox is tapped
                  setState() {
                    //  isChecked = value!;
                  }
                }),
            Expanded(
              child: Text(
                list[2],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
                 fillColor:isChecked[3] ? MaterialStateProperty.all(AppColor.green) :MaterialStateProperty.all(Colors.transparent),
                value: isChecked[3],
                onChanged: (bool? value) {
                  // This is where we update the state when the checkbox is tapped
                  setState() {
                    //isChecked = value!;
                  }
                }),
            Expanded(
              child: Text(
                list[3],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
