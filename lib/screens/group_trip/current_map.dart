import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:dimension/src/dimension.dart' as dimension;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:trip/widgets/advanced_line.dart';
import 'package:trip/widgets/line_painter.dart';

class CurrentMap extends StatefulWidget {
  const CurrentMap({super.key});
  @override
  State<CurrentMap> createState() => _CurrentMapState();
}

class _CurrentMapState extends State<CurrentMap> {
  var appBarHeight = AppBar().preferredSize.height;
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.672375, 84.434432),
    zoom: 14,
  );
  final Set<Marker> _markers = Set();
  final Set<Polyline> _polyline = {};
  PolylinePoints polylinePoints = PolylinePoints();
  Map<PolylineId, Polyline> polylines = {}; //polylines to show direction

  List<LatLng> latlng = [
    LatLng(27.672375, 84.434432),
    LatLng(27.681954, 84.443815),
    LatLng(27.687448, 84.422660),
    LatLng(27.677718, 84.413374),
    LatLng(27.672078, 84.412936),
    LatLng(27.653317, 84.436084),
    LatLng(27.693204, 84.455884),
    LatLng(27.706131, 84.442543),
  ];

  @override
  void initState() {
    getMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFFDBDFAA),
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: const Text(
            "Trip Map",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: PopupMenu(context),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              color: Color.fromARGB(255, 243, 242, 242).withOpacity(0.95),
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 6, right: 12, left: 12),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFFC370),
                                      Color(0xFF3B3863),
                                    ])),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 18,
                                  height: 18,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            alignment: Alignment.center,
                            child: AdvancedLine(
                              direction: Axis.horizontal,
                              line: SolidLine(),
                              paintDef: Paint()
                                ..strokeWidth = 5
                                // ..color = index == 0 ? const Color(0x0000000f) : Colors.black
                                ..strokeCap = StrokeCap.square,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                    //padding parameter for positioning the Google logo and other map buttons
                    padding: EdgeInsets.only(
                      top: 40,
                      bottom: 94,
                    ),
                    // polylines: _polyline,
                    polylines: _polyline, //polylines
                    //remove zoom in/out buttons
                    zoomControlsEnabled: false,
                    myLocationEnabled: true,
                    //enable location button
                    myLocationButtonEnabled: true,
                    compassEnabled: true,
                    initialCameraPosition: _kGooglePlex,
                    markers: _markers, //markers to show on map
                    mapType: MapType.normal, //map type
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                  Positioned(
                    left: 18,
                    right: 18,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.95),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFDBDFAA)),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Icon(Icons.close_outlined),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'On the way to 2nd  Start point in the trip!',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222034),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: Color(0xFFDBDFAA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Icon(Icons.info_outline),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 14,
                    left: 6,
                    right: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 24,
                            right: 24,
                            bottom: 20,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFF3B3762),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 36,
                                height: 4,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFDBDFAA),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Transport',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'By bus',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 18),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Next stop',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFFFAFAFA),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'Kalanki Bus Station',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFFDBDFAA),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xFF3B3762),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.navigation_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  PopupMenuButton<int> PopupMenu(BuildContext context) {
    return PopupMenuButton<int>(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      offset: Offset(0.0, appBarHeight - 16),
      shape: const BubbleShapeBorder(
          borderRadius: dimension.Length(22, unit: LengthUnit.percent),
          side: ShapeSide.top,
          arrowCenterPosition: dimension.Length(86, unit: LengthUnit.percent),
          arrowHeadPosition: dimension.Length(86, unit: LengthUnit.percent),
          arrowWidth: dimension.Length(8, unit: LengthUnit.percent),
          arrowHeight: dimension.Length(6, unit: LengthUnit.percent)),
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
            value: 0,
            child: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      color: Color.fromARGB(255, 29, 29, 29),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text("Partakers")
                  ],
                ))),
        const PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Icon(
                  Icons.share,
                  color: Color.fromARGB(255, 29, 29, 29),
                ),
                SizedBox(
                  width: 7,
                ),
                Text("Share")
              ],
            )),
      ],
      onSelected: (item) => SelectedItem(context, item),
    );
  }

  getMarker() async {
    for (int i = 0; i < latlng.length; i++) {
      BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(),
        "assets/images/profile.jpg",
      );

      _markers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          //_lastMapPosition is any coordinate which should be your default position when map opens up
          position: latlng[i],
          infoWindow: InfoWindow(
            title: "Really cool place",
            snippet: "5 Star Rating",
          ),
          icon: markerbitmap,
        ),
      );
      setState(() {});
      _polyline.add(
        Polyline(
          polylineId: PolylineId("1"),
          color: Colors.deepPurpleAccent,
          points: latlng,
          width: 8,
        ),
      );
    }
  }
}

void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      print("Privacy Clicked222");

      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (context) => SettingPage()));
      break;
    case 1:
      print("Privacy Clicked");
      break;
    case 2:
      print("User Logged out");
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (context) => LoginPage()),
      //     (route) => false);
      break;
  }
}
