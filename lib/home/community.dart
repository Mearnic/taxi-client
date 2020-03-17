
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community>
    with SingleTickerProviderStateMixin {
  MapController mapController = new MapController();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
//    var locationService = LocationService();
//    locationService.getLocation().then((result) {
//      debugPrint(result.latitude.toString() + "-------------");
//      debugPrint(result.longitude.toString() + "-------------");
//    }).whenComplete((){
//    }).catchError((){
//    });
//
    _getLocation();
    return new FlutterMap(
      mapController: mapController,
      options: new MapOptions(
        center: new LatLng(22, 113),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate:
              "https://a.tiles.mapbox.com/v4/mapbox.streets/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWVhcm5pYyIsImEiOiJjazd3MDkxZHgwaGtlM2VtMWVkOXV0OWNqIn0.DozVAqD9LCagGSc_goYClw",
          additionalOptions: {
            'accessToken':
                'pk.eyJ1IjoibWVhcm5pYyIsImEiOiJjazd3MDkxZHgwaGtlM2VtMWVkOXV0OWNqIn0.DozVAqD9LCagGSc_goYClw',
            'id': 'mapbox.streets',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 20.0,
              height: 20.0,
              point: new LatLng(22, 113),
              builder: (ctx) => new Container(
                child: new FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future _getLocation() async {
    Location location = new Location();
//
//    bool _serviceEnabled;
//    PermissionStatus _permissionGranted;
//
//    _serviceEnabled = await location.serviceEnabled();
//    if (!_serviceEnabled) {
//      _serviceEnabled = await location.requestService();
//      if (!_serviceEnabled) {
//        return _locationData;
//      }
//    }
//    _permissionGranted = await location.hasPermission();
//    if (_permissionGranted == PermissionStatus.DENIED) {
//      _permissionGranted = await location.requestPermission();
//      if (_permissionGranted != PermissionStatus.GRANTED) {
//        return _locationData;
//      }
//    }
//
//    _locationData = await location.getLocation();

    location.onLocationChanged().listen((LocationData currentLocation) {
      debugPrint(currentLocation.latitude.toString() + "-------------" + new DateTime.now().toIso8601String());
      mapController.move(new LatLng(currentLocation.latitude, currentLocation.longitude), 13.00);

    });
  }

}
