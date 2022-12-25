import 'package:flutter/material.dart';

class LiveTapWidget extends StatelessWidget {
  const LiveTapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 185,
              height: 96,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).textTheme.headline6?.color,
                borderRadius: BorderRadius.circular(12),
              ),
            ), Container(
              width: 185,
              height: 96,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).textTheme.headline6?.color,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 23),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Row(children:const  [
                Icon(Icons.location_on),
                Text('City, Street Name, Position')
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '6k',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      const TextSpan(
                        text: ' on Peak time',
                      ),
                    ],
                  ),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const Text('16H: 25M left')
            ],
          ),
        )
      ],
    );
  }
}
