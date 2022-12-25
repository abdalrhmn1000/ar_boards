import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:ae_boards/presentation/search/widgets/filter_item_widget.dart';
import 'package:ae_boards/presentation/search/widgets/map_tap_widget.dart';
import 'package:ae_boards/presentation/search/widgets/search_tap_item_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<SortModel> sortItems = [];
  bool _showMap = true;

  @override
  void initState() {
    sortItems = [
      SortModel(image: Assets.icons.filterIcon1.path),
      SortModel(image: Assets.icons.filterIcon2.path),
      SortModel(image: Assets.icons.filterIcon3.path),
      SortModel(image: Assets.icons.filterIcon4.path),
      SortModel(image: Assets.icons.filterIcon5.path),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !_showMap
          ? AppBar(
              leading: const BackLeadingIcon(),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list_rounded,
                      color: Theme.of(context).primaryColor,
                    )),
              ],
            )
          : null,
      body: Builder(builder: (context) {
        if (_showMap) {
          return MapTapWidget(sortItems: sortItems);
        }
        return SearchTapItemWidget(sortItems: sortItems);
      }),
      floatingActionButton: Container(
        width: 35,
        height: 135,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _showMap = true;
                });
              },
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: _showMap
                        ? Theme.of(context).textTheme.headline6!.color
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: _showMap
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).textTheme.headline6!.color,
                  )),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _showMap = false;
                });
              },
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: !_showMap
                        ? Theme.of(context).textTheme.headline6!.color
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.format_list_bulleted_rounded,
                    color: !_showMap
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).textTheme.headline6!.color,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
