import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
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

  Set<Marker> markers = {};

  LatLng source = LatLng(27.669489, 84.440001);
  // LatLng? source;

  Map<PolylineId, Polyline> polyLines = <PolylineId, Polyline>{};

  GoogleMapController? mapController;

  @override
  void initState() {
    super.initState();
    addMarker();
    getMultiplePolyLines();
    // _determinePosition().then((value) {
    //   setState(() {
    //     LatLng source = LatLng(value.latitude, value.longitude);
    //   });
    // });
  }

  List<LatLng> listLocations = [
    LatLng(27.695677, 84.421179),
    LatLng(27.681768, 84.430156),
    LatLng(27.686475, 84.438911),
  ];

  getMultiplePolyLines() async {
    await Future.forEach(listLocations, (LatLng elem) async {
      await _getRoutePolyline(
        start: source,
        finish: elem,
        color: Colors.green,
        id: 'firstPolyline $elem',
        width: 4,
      );
    });
    setState(() {});
  }

  Future<void> addMarker() async {
    markers.add(Marker(
        markerId: MarkerId(source.toString()),
        position: source,
        icon: await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(),
          "assets/images/source.png",
        )));
    listLocations.forEach((element) async {
      markers.add(Marker(
          markerId: MarkerId(element.toString()),
          position: element,
          icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(),
            "assets/images/profile.jpg",
          ),
          onTap: () {}));
    });
  }

  Future<Polyline> _getRoutePolyline(
      {required LatLng start,
      required LatLng finish,
      required Color color,
      required String id,
      int width = 6}) async {
    // Generates every polyline between start and finish
    final polylinePoints = PolylinePoints();
    // Holds each polyline coordinate as Lat and Lng pairs
    final List<LatLng> polylineCoordinates = [];

    final startPoint = PointLatLng(start.latitude, start.longitude);
    final finishPoint = PointLatLng(finish.latitude, finish.longitude);

    final result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyC4dAB2WSV61YKCmYO6j6HdTq6m8rWireE",
      startPoint,
      finishPoint,
      travelMode: TravelMode.driving,
    );

    if (result.points.isNotEmpty) {
      // loop through all PointLatLng points and convert them
      // to a list of LatLng, required by the Polyline
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      });
    }

    final Polyline polyline = Polyline(
        polylineId: PolylineId(id),
        consumeTapEvents: true,
        points: polylineCoordinates,
        color: Colors.red,
        width: 6,
        onTap: () {});

    setState(() {
      polyLines[PolylineId(id)] = polyline;
    });

    return polyline;
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
                    polylines: Set<Polyline>.of(polyLines.values),
                    markers: markers,
                    onMapCreated: (c) {
                      mapController = c;
                    },
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: source,
                      zoom: 18.0,
                    ),
                    mapType: MapType.normal,
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

// Future<Position> _determinePosition() async {
//   bool serviceEnabled;
//   LocationPermission permission;
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     permission = await Geolocator.requestPermission();

//     return Future.error('Location services are disabled.');
//   }

//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       return Future.error('Location permissions are denied');
//     }
//   }

//   if (permission == LocationPermission.deniedForever) {
//     return Future.error(
//         'Location permissions are permanently denied, we cannot request permissions.');
//   }

//   return await Geolocator.getCurrentPosition();
// }
