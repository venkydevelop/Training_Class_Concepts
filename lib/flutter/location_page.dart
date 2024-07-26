import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  LatLng? selectedLocation;
  GoogleMapController? mapController;

  @override
  void initState() {
    super.initState();
    fetchCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 50,
              child: const Center(
                child: Text(
                  "Location",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: selectedLocation != null
                  ? GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: selectedLocation ?? const LatLng(17, 78),
                        zoom: 12,
                      ),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      onMapCreated: (controller) {
                        mapController = controller;
                      },
                      onCameraMove: (CameraPosition position) {
                        print(position.target);
                      },
                      markers: selectedLocation != null
                          ? {
                              Marker(
                                  markerId: const MarkerId("current_location"),
                                  position:
                                      selectedLocation ?? const LatLng(17, 78),
                                  icon: BitmapDescriptor.defaultMarker)
                            }
                          : {},
                    )
                  : const Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
    );
  }

  Future<Position?> fetchCurrentLocation() async {
    try {
      await Geolocator.requestPermission();
      LocationPermission locationPermission =
          await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) return null;
      final position = await Geolocator.getCurrentPosition();
      setState(() {
        selectedLocation = LatLng(position.latitude, position.longitude);
        // _currentAddress =
        //     'Latitude: ${position.latitude}, Longitude:${position.longitude}';
      });
      mapController?.animateCamera(
          CameraUpdate.newLatLng(selectedLocation ?? const LatLng(17, 78)));
      return position;
    } catch (e) {
      return null;
    }
  }
}
