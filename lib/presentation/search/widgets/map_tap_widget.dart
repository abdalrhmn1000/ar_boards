import 'dart:async';
import 'dart:ui' as ui;
import 'package:ae_boards/presentation/core/utils/generated_assets/assets.gen.dart';
import 'package:ae_boards/presentation/core/widgets/back_leading_icon.dart';
import 'package:ae_boards/presentation/search/widgets/filter_item_widget.dart';
import 'package:ae_boards/presentation/search/widgets/test_field_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTapWidget extends StatefulWidget {
  final List<SortModel> sortItems;

  const MapTapWidget({Key? key, required this.sortItems}) : super(key: key);

  @override
  State<MapTapWidget> createState() => _MapTapWidgetState();
}

class _MapTapWidgetState extends State<MapTapWidget> {
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  final List<LatLng> _list = [
    const LatLng(
      25.0698508,
      55.1406592,
    ),
    const LatLng(
      25.0703833,
      55.140965,
    ),
    const LatLng(
      25.0703966,
      55.140935,
    ),
    const LatLng(
      25.0704066,
      55.14091,
    ),
  ];

  @override
  void initState() {
    getMarkers(Assets.icons.iconMap.path);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          zoomControlsEnabled: false,
          mapToolbarEnabled: false,
          initialCameraPosition: const CameraPosition(
            target: LatLng(
              25.0698508,
              55.1406592,
            ),
            zoom: 3.151926040649414,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          myLocationButtonEnabled: false,
          markers: markers,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 4, right: 4),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackLeadingIcon(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list_rounded,
                          color: Theme.of(context).primaryColor,
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: TextFieldSearchWidget(),
                ),
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
              ],
            ),
          ),
        )
      ],
    );
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void getMarkers(String icon) async {
    final Uint8List selectedMarkerIcon = await getBytesFromAsset(icon, 100);

    markers = {};
    for (var element in _list) {
      markers.add(Marker(
        draggable: false,
        markerId: MarkerId(
            element.latitude.toString() + element.longitude.toString()),
        position: LatLng(
          element.latitude,
          element.longitude,
        ),
        icon: BitmapDescriptor.fromBytes(selectedMarkerIcon),
      ));
    }

    setState(() {});
  }
}
