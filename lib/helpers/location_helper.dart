import 'package:flutter_dotenv/flutter_dotenv.dart';

String googleApiKey = DotEnv().env['KEY'];

class LocationHelper {
  static String generateLocationPreviewImage({
    double latitude,
    double longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:purple%7Clabel:A%7C$latitude,$longitude&key=$googleApiKey';
  }
}
