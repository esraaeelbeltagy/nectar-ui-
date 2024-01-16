
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextField(
        style: const TextStyle(
          color: Color(0xff020202),
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF2F3F2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintText: "Search Store",
          hintStyle: const TextStyle(
              color: Color(0xff4C4F4D),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              decorationThickness: 6),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: const Color(0xff4C4F4D),
        ),
      ),
    );
  }
}
