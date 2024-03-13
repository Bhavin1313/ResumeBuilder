import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/screen/detail/adddetail.dart';
import 'modules/screen/home/home.dart';
import 'modules/screen/pdf/pdf.dart';
import 'modules/screen/splesh/splesh.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(name: "/", page: () => Splash()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/detail", page: () => Detail()),
        GetPage(name: "/pdf", page: () => Pdf()),
      ],
    ),
  );
}
