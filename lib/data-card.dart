import 'package:flutter/material.dart';
class DataCard extends StatelessWidget {
  const DataCard({required this.color, this.childCard});
  final Color color;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: childCard,
    );
  }
}