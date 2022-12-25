import 'package:ae_boards/presentation/core/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AutoRouter.of(context).push(const UploadDetailsPageRoute());
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 5),
        child: Row(
          children: [
            Container(
              width: 173,
              height: 91,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).textTheme.headline6?.color,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Text(
                        'Pending',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const Icon(Icons.more_vert_rounded),
                  ],
                ),
                const Padding(
                  padding:  EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                  ),
                  child: Text('Rebranding 2'),
                ),
                const Text('2 Sep 2022'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
