import 'package:jots/page/first_page.dart';
import 'package:jots/page/test_page.dart';
import 'package:get/get.dart';

class RouterManager {
  static final routes = [
    GetPage(name: Routers.first, page: () => FirstPage()),
    GetPage(name: Routers.test, page: () => TestPage()),
  ];
}

class Routers {
  static const String first = '/first';
  static const String test = '/test';
}