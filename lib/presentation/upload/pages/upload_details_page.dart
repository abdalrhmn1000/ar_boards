import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:flutter/material.dart';

class UploadDetailsPage extends StatefulWidget {
  const UploadDetailsPage({Key? key}) : super(key: key);

  @override
  State<UploadDetailsPage> createState() => _UploadDetailsPageState();
}

class _UploadDetailsPageState extends State<UploadDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 225,
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.headline6?.color,

                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30,left: 10),
                child: Align(alignment: Alignment.topLeft,child: BackLeadingIcon(),),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 47,bottom: 47,),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Rebranding 1',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(width: 10,),
                const Icon(Icons.edit_outlined),
              ],
            ),
          ),
          Text(
            'Ready for publishing',
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).primaryColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,bottom: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Designed By. ',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.normal
                  ),
                ),
                const SizedBox(width: 10,),
                Assets.images.appLogo.image(width: 20,height: 20)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(Icons.photo_size_select_small_rounded),
              const SizedBox(width: 10,),
              Text(
                'Preview Ad',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                  decoration: TextDecoration.underline
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
