import 'package:permission_handler/permission_handler.dart';

Future<void> requestCameraPermission() async {
  var status = await Permission.camera.status;
  if (status.isDenied) {
    await Permission.camera.request();
  }
}
