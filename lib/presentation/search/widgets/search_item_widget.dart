import 'package:flutter/material.dart';

class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 225,
            margin: const EdgeInsets.only( bottom: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).textTheme.headline6?.color,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  const SizedBox(width: 10,),
                  Text(
                    'City, Street Name, Position',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
              Icon(Icons.favorite_border_rounded,color: Theme.of(context).errorColor,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '6 x 2 meters',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).primaryColor
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '6k',
                      style:  Theme.of(context).textTheme.headline6,
                    ),
                    const TextSpan(
                      text: ' on Peak time',
                    ),
                  ],
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
