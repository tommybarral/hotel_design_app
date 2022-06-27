import 'package:flutter/material.dart';
import 'first_content_screen.dart';
import 'second_content_screen.dart';

class ChoiceOverviewScreen extends StatelessWidget {
  ChoiceOverviewScreen({Key? key}) : super(key: key);

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [
        FirstContentScreen(),
        SecondContentScreen(),
      ],
    );
  }
}
