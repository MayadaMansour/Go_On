import 'package:flutter/material.dart';

class ListViewGap extends StatelessWidget {
  const ListViewGap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*0.06,);
  }
}
