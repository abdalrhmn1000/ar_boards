import 'package:ae_boards/presentation/core/routes/router.dart';
import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/home/pages/widgets/custom_icon_button_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RequestsTapWidget extends StatelessWidget {
  const RequestsTapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'no_ad'.tr(),
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              TextSpan(
                text: 'no_worries'.tr(),
              ),
            ],
          ),
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          'request_one'.tr(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Container(
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 24,
            ),
            width: 125,
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const AddRequestPageRoute());
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff2C2626))),
              child: const Icon(Icons.add),
            )),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            CustomIconButtonWidget(
                color: Theme.of(context).colorScheme.onPrimary,
                icon: Assets.icons.iconHome1.path),
            CustomIconButtonWidget(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.8),
                icon: Assets.icons.iconHome2.path),
            CustomIconButtonWidget(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
                icon: Assets.icons.iconHome3.path),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        ListTile(
          title: const Text(
            'Ad for Opening',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: const Text('2 Sep 2022'),
          trailing: Icon(
            Icons.more_vert_rounded,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        )
      ],
    );
  }
}
