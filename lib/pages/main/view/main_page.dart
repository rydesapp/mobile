import 'package:flutter/material.dart';
import 'package:mobile/global/widgets/base_scaffold.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);
  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            onMapCreated: (cont) {
              print(cont);
            },
          ),
        ],
      ),
    );
  }
}
