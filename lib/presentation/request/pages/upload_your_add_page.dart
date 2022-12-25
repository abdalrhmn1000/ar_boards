import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UploadYourAddPage extends StatefulWidget {
  const UploadYourAddPage({Key? key}) : super(key: key);

  @override
  State<UploadYourAddPage> createState() => _UploadYourAddPageState();
}

class _UploadYourAddPageState extends State<UploadYourAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackLeadingIcon(),
        title: Text('finishing_up'.tr()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            alignment: Alignment.center,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_upward,size: 40,),
                const SizedBox(height: 10,),
                Text(
                  'upload_your_ad'.tr(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          )),
          Expanded(child: Container(
            alignment: Alignment.center,
            color:Theme.of(context).colorScheme.primary.withOpacity(0.5) ,
            child: Column(
              children: [
                const SizedBox(height: 36,),
                Text(
                  'supported_formats'.tr(),
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 50),
                  child: Text(
                    'mp4_mkv_jpg_png_svg_tff_otf'.tr(),
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
                Text(
                  'dimensions'.tr(),
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ), Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 30),
                  child: Text(
                    '1920 x 1080',
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),Text(
                  'Our team will review your ad and publish it \nif approved, in period of no longer than 1 Hour!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  textAlign: TextAlign.center,
                ),
                Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 24,
                    ),
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      // style: ButtonStyle(
                      //     backgroundColor:
                      //     MaterialStateProperty.all(const Color(0xff2C2626))),
                      child: Text('next'.tr()),
                    )),
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
