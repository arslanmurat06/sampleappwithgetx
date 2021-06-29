import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleappwithgetx/bindings/service_bindings.dart';
import 'package:sampleappwithgetx/pages/homepage.dart';

import 'services/dayservice/day_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // initialBinding: ServiceBinding(),
        // home: HomePage(),
        getPages: [
          GetPage(
            name: '/',
            page: () => HomePage(),
            binding: ServiceBinding(),
          ),
        ]);
  }
}
