import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Widget? child;

  const SectionWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column( 
   
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ,
              style: const TextStyle(
                color: Color(0xff181725),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
            InkWell(
            
              onTap: onTap,
                child: const  Text(
                'See all',
                style: TextStyle(
                  color: Color(0xff53B175),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),
        child ?? const SizedBox(),
      ]);
  }
}
