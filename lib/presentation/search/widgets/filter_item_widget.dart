import 'package:flutter/material.dart';


class SortItemWidget extends StatelessWidget {
  final SortModel item;

  const SortItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:(item.isSelected??false)?Theme.of(context).colorScheme.primary :Theme.of(context).colorScheme.onPrimary,
        ),
        child: Image.asset(item.image ,width: 25,height: 25,
        color: (item.isSelected??false)? Theme.of(context).colorScheme.onPrimary:Theme.of(context).textTheme.headline6!.color,),
      ),
    );
  }
}

class SortModel {
  bool? isSelected;
  String image;
  SortModel({
    this.isSelected,
    required this.image,
  });
}
