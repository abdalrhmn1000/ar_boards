import 'package:ae_boards/presentation/core/routes/router.dart';
import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddRequestPage extends StatefulWidget {
  const AddRequestPage({Key? key}) : super(key: key);

  @override
  State<AddRequestPage> createState() => _AddRequestPageState();
}

class _AddRequestPageState extends State<AddRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackLeadingIcon(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
        child: Column(
          children: [
            Column(
              children: [
                const Icon(Icons.arrow_upward,size: 40,),
                const SizedBox(height: 10,),
                Text(
                  'upload'.tr(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'upload_elements_fonts_images_you_want_to_include_in_your_ad'
                    .tr(),
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Text(
              'supported_formats'.tr(),
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 50),
              child: Text(
                'mp4_mkv_jpg_png_svg_tff_otf'.tr(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ad_name'.tr(),
                hintText: 'ad_name'.tr(),
                enabledBorder: const UnderlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'description'.tr(),
                hintText: 'description'.tr(),
                enabledBorder: const UnderlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'price'.tr(),
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    const TextSpan(
                      text: ' 2000',
                    ),
                  ],
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Text(
              'Will be in touch in no longer than 1 hour',
              style:
                  Theme.of(context).textTheme.headline6?.copyWith(fontSize: 14),
            ),
            Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 24,
                ),
                width: 125,
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const UploadYourAddPageRoute());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff2C2626))),
                  child: Text('request'.tr()),
                )),
          ],
        ),
      ),
    );
  }
}
