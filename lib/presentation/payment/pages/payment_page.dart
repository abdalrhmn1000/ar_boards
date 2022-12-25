import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackLeadingIcon(),
        title: Text(
          'last_step'.tr(),
          style: TextStyle(color: Theme.of(context).textTheme.headline6?.color),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
        child: Column(
          children: [
            Text(
              'your_payment_method'.tr(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.paypalIcon.image(width: 40, height: 40),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Assets.icons.cardIcon.image(width: 40, height: 40),
                  ),
                  Assets.icons.card2Icon.image(width: 40, height: 40),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'name_on_card'.tr(),
                        hintText: 'name_on_card'.tr(),
                        enabledBorder: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'card_number'.tr(),
                        hintText: 'card_number'.tr(),
                        enabledBorder: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'expiration_date'.tr(),
                        hintText: 'expiration_date'.tr(),
                        enabledBorder: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'cvv'.tr(),
                        hintText: 'cvv'.tr(),
                        enabledBorder: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Divider(color: Theme.of(context).textTheme.headline6?.color),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'total'.tr(),
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    const TextSpan(
                      text: ' 42K',
                    ),
                  ],
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                  bottom: 24,
                ),
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff2C2626))),
                  child: Text('pay'.tr()),
                )),
          ],
        ),
      ),
    );
  }
}
