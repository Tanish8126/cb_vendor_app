import 'package:permission_handler/permission_handler.dart';

Future<bool> getLocation() async {
  var status = await Permission.location.status;

  if (status.isDenied ||
      await Permission.location.isRestricted ||
      await Permission.speech.isPermanentlyDenied) {
    await Permission.location.request();
  }

  if (await Permission.speech.isPermanentlyDenied) {
    openAppSettings();
  }

  return true;
}
