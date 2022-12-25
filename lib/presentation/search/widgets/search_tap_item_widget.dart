import 'package:ae_boards/presentation/search/widgets/filter_item_widget.dart';
import 'package:ae_boards/presentation/search/widgets/search_item_widget.dart';
import 'package:ae_boards/presentation/search/widgets/test_field_search_widget.dart';
import 'package:flutter/material.dart';

class SearchTapItemWidget extends StatefulWidget {
  final  List<SortModel> sortItems;
  const SearchTapItemWidget({Key? key,required this.sortItems,}) : super(key: key);

  @override
  State<SearchTapItemWidget> createState() => _SearchTapItemWidgetState();
}

class _SearchTapItemWidgetState extends State<SearchTapItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          const TextFieldSearchWidget(),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            height: 60,
            child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.sortItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var element in widget.sortItems) {
                          element.isSelected = false;
                        }
                        widget.sortItems[index].isSelected = true;
                      });
                    },
                    child: SortItemWidget(
                      item: widget.sortItems[index],
                    ),
                  );
                }),
          ),
          ListView.builder(
              itemCount: 3,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, state) {
                return const SearchItemWidget();
              })
        ],
      ),
    );
  }
}
