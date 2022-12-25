import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final Color color;
  final String icon;

  const CustomIconButtonWidget({
    Key? key,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 108,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context)
                .colorScheme
                .onSecondaryContainer
                .withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        icon,
        width: 50,
        height: 50,
      ),
    );
  }
}
