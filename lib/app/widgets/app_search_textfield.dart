import 'package:design_poc/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppSearchTextField extends StatelessWidget {
  const AppSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.teal,
      style: const TextStyle(fontSize: 17),
      decoration: const InputDecoration(
          hintText: 'Pesquisar',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: AppColors.supportingRed),
      suffixIcon: Icon(Icons.close, color: Colors.grey, size: 16,)),
      onChanged: (value) {},
    );
  }
}
