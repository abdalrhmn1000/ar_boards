import 'package:ae_boards/presentation/core/routes/router.dart';
import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/home/pages/widgets/requests_tap_widget.dart';
import 'package:ae_boards/presentation/home/pages/widgets/upload_tap_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const PaymentPageRoute());
                        },
                        icon: Assets.images.appLogo.image()),
                    IconButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const MyBillBoardsPageRoute());
                        },
                        icon: const Icon(Icons.notifications)),
                  ],
                ),
                SizedBox(
                    width: 125,
                    child: Text(
                      'designs'.tr(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    )),
                IconButton(onPressed: () {
                  AutoRouter.of(context).push(const SearchPageRoute());
                }, icon: Assets.icons.flag.image())
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 17,
                  right: 17,
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Material(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            isScrollable: true,
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            unselectedLabelColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
                            labelColor: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer,
                                  width: 2.0),
                            ),
                            tabs: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                alignment: Alignment.center,
                                child: Tab(
                                  child: Text(
                                    'requests'.tr(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                alignment: Alignment.center,
                                child: Tab(
                                  child: Text(
                                    'library'.tr(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: SizedBox(
                          height: 500,
                          child: TabBarView(children: [
                            RequestsTapWidget(),
                            UploadTapWidget(),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
