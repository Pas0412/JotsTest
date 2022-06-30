import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jots/common/router_manager.dart';
import 'package:jots/page/test_page.dart';
import 'package:jots/widget/candidate_container.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
  }

  ///lifecycle destroy
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.1, //scale
                spreadRadius: 0.1)
          ],
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Feedback",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: " about ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "Candidate Group Interview",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: " for the ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "Dev team",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: " with candidates ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "Nikki, James",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: " and ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "Elsa",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: ", on ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "11/05/2022",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
              const TextSpan(
                  text: " at ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                text: "Jots HQ",
                style: const TextStyle(
                    color: Colors.lightBlueAccent, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ),
            ]),
          ),
          const SizedBox(height: 5),
          const Divider(height: 1, color: Colors.grey),
          const SizedBox(height: 5),
          const Text(
              "All the candidates were pretty nice, we started with an introduction of Jots, then we all presented ourselves, and the candidates got to ask questions. The session went pretty well."),
          CandidateContainer(),
          const SizedBox(height: 10),
          const Divider(height: 1, color: Colors.grey),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset("assets/feedback.png"),
                  const SizedBox(width: 5),
                  const Text("Feedback",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  const Text(" · Type",
                      style: TextStyle(color: Colors.grey, fontSize: 14))
                ],
              )),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset("assets/private.png"),
                  const SizedBox(width: 5),
                  const Text("Jots",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  const Text(" (Private)",
                      style: TextStyle(color: Colors.black, fontSize: 14))
                ],
              )),
        ],
      ),
    ));
  }
}
