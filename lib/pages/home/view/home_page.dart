import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mobile/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LatLng _center = const LatLng(31.9882897, 35.8825136);
  String _mapStyle;
  GoogleMapController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString(Assets.mapStyle).then((string) {
      _mapStyle = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
          onMapCreated: (cont) {
            _controller = cont;
            _controller.setMapStyle(_mapStyle);
          },
        ),
      ),
    );
  }
}
