import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {  final Completer<GoogleMapController> _controller = Completer();

static const CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(27.383153701145417, 77.69119475270783),
  zoom: 14.4746,
);

static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799, /// camera's bearing in degrees, measured clockwise from north
    target: LatLng(27.383153701145417, 77.69119475270783),
    tilt: 59.440717697143555, /// angle, in degrees, of the camera angle from the nadir
    zoom: 19.151926040649414);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Mathura"),
    ),
    body: GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: {
        carnivalMarker,
      },
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      // on below line we have enabled compass
      compassEnabled: true,
    ),

    floatingActionButton: FloatingActionButton.extended(

      onPressed: _goToTheCinema,
      label: const Text('Carnival Cinema'),
      icon: const Icon(Icons.movie),
    ),
  );
}

Future<void> _goToTheCinema() async {
  final GoogleMapController controller = await _controller.future;
  controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
}

}
Marker carnivalMarker = Marker(
  markerId: const MarkerId('gramercy'),
  position: const LatLng(27.38314954842524, 77.69119007596123),
  infoWindow: const InfoWindow(title: 'Carnival Cinemas'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);