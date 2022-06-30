import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'common/router_manager.dart';
import 'page/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RouterManager.routes,
      // TODO: switch to splash page whenever we have the requirement
      initialRoute: Routers.first,
      title: 'Jots',
      home: FirstPage(),
    );
  }
}
