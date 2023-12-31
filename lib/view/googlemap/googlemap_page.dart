import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:location/location.dart';

class GoogleMapPage extends StatefulWidget {
  String name;
  String pic;
  String address;
  String timing;
  GoogleMapPage({
    Key? key,
    required this.name,
    required this.pic,
    required this.address,
    required this.timing,
  }) : super(key: key);

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  Location _controller = Location();
  Completer<GoogleMapController> _mapController = Completer();
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(23.249023, 77.474218),
    zoom: 14.4746,
  );

  LatLng? _currentP = null;

  Uint8List? markerImage;

  List<Marker> _markers = <Marker>[];

  Map<PolylineId, Polyline> polylines = {};

  Future<Uint8List> getBytesFromAssets(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    final Uint8List markerIcon =
        await getBytesFromAssets('assets/flag.png', 100);

    _serviceEnabled = await _controller.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _controller.requestService();
    } else {
      return;
    }

    _permissionGranted = await _controller.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _controller.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _controller.onLocationChanged.listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentP =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentP!);
          _markers.add(Marker(
            markerId: MarkerId('1'),
            icon: BitmapDescriptor.fromBytes(markerIcon),
            position: _currentP!,
          ));
        });
      }
    });
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition _newCameraPosition = CameraPosition(target: pos, zoom: 19);
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(_newCameraPosition));
  }

  Future<List<LatLng>> getPolylinePoints() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        Mq.GOOGLE_MAP,
        PointLatLng(_currentP!.latitude, _currentP!.latitude),
        PointLatLng(23.249023, 77.474218),
        travelMode: TravelMode.driving);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    return polylineCoordinates;
  }

  void generatePolyLineFromPoints(List<LatLng> polylineCoordinates) async {
    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
        polylineId: id,
        color: AppColors.buttonColor,
        points: polylineCoordinates,
        width: 8);
    setState(() {
      polylines[id] = polyline;
    });
  }

  loadData() async {
    final Uint8List markerIcon =
        await getBytesFromAssets('assets/pin.png', 100);
    _markers.add(
      Marker(
        markerId: MarkerId('2'),
        icon: BitmapDescriptor.fromBytes(markerIcon),
        position: LatLng(23.249023, 77.474218),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      bottomSheet: Container(
        height: W * .600,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: W * .060, vertical: W * .060),
              child: SizedBox(
                height: W * .050,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Book Completed',
                      style: GoogleFonts.poppins(
                          fontSize: W * .038,
                          fontWeight: FontWeight.w600,
                          color: AppColors.background),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: W * .040,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Container(
                height: W * .246,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: W * .156,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.pic))),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: W * .020, horizontal: W * .020),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                widget.name,
                                style: GoogleFonts.poppins(
                                    fontSize: W * .042,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.background),
                              ),
                            ),
                            SizedBox(
                              height: W * .006,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: W * .05,
                                      height: W * .05,
                                      child: Image.asset('assets/alarm 1.png')),
                                  SizedBox(
                                    width: W * .005,
                                  ),
                                  Text(
                                    widget.timing,
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .028,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: W * .003,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: W * .05,
                                      height: W * .05,
                                      child: Image.asset('assets/location.png',
                                          color: AppColors.buttonColor)),
                                  SizedBox(
                                    width: W * .005,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        widget.address,
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .028,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: W * .15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: W * .055,
                        width: W * .055,
                        child: Image.asset('assets/phone.png'),
                      ),
                      SizedBox(
                        width: W * .010,
                      ),
                      Text('Call ',
                          style: GoogleFonts.poppins(
                              fontSize: W * .032,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: W * .080,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        getLocationUpdates();
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset('assets/pinlocation.png'),
                        ),
                        SizedBox(
                          width: W * .010,
                        ),
                        Text('Directions ',
                            style: GoogleFonts.poppins(
                                fontSize: W * .032,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (((GoogleMapController controller) {
              _mapController.complete(controller);
            })),
            // on below line setting camera position
            initialCameraPosition: CameraPosition(
              target: LatLng(23.249023, 77.474218),
              zoom: 13.4746,
            ),
            // on below line we are setting markers on the map
            markers: Set<Marker>.of(_markers),
            polylines: Set<Polyline>.of(polylines.values),
          ),
          SafeArea(
            child: SizedBox(
              height: W * .10,
              child: Center(
                child: Text(
                  'Shop Location',
                  style: GoogleFonts.poppins(
                      fontSize: W * .048,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
