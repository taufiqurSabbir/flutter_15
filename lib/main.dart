
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'app.dart';

main(){
  runApp(

      DevicePreview(
        enabled: true,
        builder:(contex)=> MyApp()
      ),
      );
}