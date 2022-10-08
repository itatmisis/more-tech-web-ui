import 'package:flutter/material.dart';
class ActivityPanel extends StatelessWidget {
  const ActivityPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Column(),
          Column(),
        ],
      ),
    );
  }
}
