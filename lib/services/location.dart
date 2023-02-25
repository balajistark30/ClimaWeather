import 'package:geolocator/geolocator.dart';

class Location {
 double latitude=0.0;
 double longitude=0.0;

 Future<void> getCurrentLocation() async {

   await Geolocator.checkPermission();
   await Geolocator.requestPermission();
   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
   latitude = position.latitude;
   longitude = position.longitude;
 }
}