import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jots/common/router_manager.dart';
import 'package:jots/page/test_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class CandidateContainer extends StatefulWidget {
  @override
  _CandidateContainerState createState() {
    return _CandidateContainerState();
  }
}

class _CandidateContainerState extends State<CandidateContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 55,
            alignment: Alignment.topCenter,
            child: const Text(
              "Dev Candidate",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _candidateWidget(
                  context,
                  " Nikki",
                  "+336 XX XX XX XX",
                  "Good fit",
                  "Good candidate, constructive, smart, and listen to others.",
                  "pos"),
              const SizedBox(height: 10),
              _candidateWidget(
                  context,
                  " James",
                  "+336 XX XX XX XX",
                  "Not a fit",
                  "He is not interested in doing some Flutter.",
                  "neg"),
              const SizedBox(height: 10),
              _candidateWidget(context, " Elsa", "+336 XX XX XX XX", "Maybe",
                  "Didn't express herself too much, shy?", "recon"),
              const SizedBox(height: 10),
              const Text("· new dev candidate",
                  style: TextStyle(color: Colors.grey, fontSize: 8)),
            ],
          ))
        ],
      ),
    );
  }

  _candidateWidget(BuildContext context, String name, String tel, String result,
      String comment, String resText){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: " · " + name,
              style: const TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routers.test);
                },
            ),
            TextSpan(
                text: " · " + tel,
                style: TextStyle(color: Colors.grey, fontSize: 10)),
            TextSpan(
                text: " · " + result,
                style: TextStyle(color: Colors.grey, fontSize: 10))
          ]),
        ),
        const SizedBox(height: 10),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(comment,
                style: const TextStyle(fontSize: 10, color: Colors.black))),
        resText == "pos"
            ? _positiveWidget(context, "Nikki")
            : resText == "neg"
                ? _negativeWidget(context)
                : _reconsiderWidget(context),
      ],
    );
  }

  _positiveWidget(BuildContext context, String name) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0.1, //scale
                  spreadRadius: 0.1)
            ],
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        margin: EdgeInsets.only(top: 10, left: 20),
        padding: EdgeInsets.all(5),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/heart.png"),
                  const SizedBox(width: 10),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: name,
                      style: const TextStyle(
                          color: Colors.lightBlueAccent, fontSize: 10),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routers.test);
                        },
                    ),
                    const TextSpan(
                        text: " likes ",
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                    TextSpan(
                      text: "Flutter",
                      style: const TextStyle(
                          color: Colors.lightBlueAccent, fontSize: 10),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routers.test);
                        },
                    )
                  ]))
                ],
              ),
              RichText(
                  text: TextSpan(
                text: "(new)",
                style: const TextStyle(color: Colors.lightGreen, fontSize: 8),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routers.test);
                  },
              ))
            ],
          ),
          const SizedBox(height: 3),
          const Divider(height: 1, color: Colors.grey),
          const SizedBox(height: 3),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Image.asset("assets/todo.png"),
              const SizedBox(width: 10),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Send the dev test",
                        style: TextStyle(color: Colors.black, fontSize: 10))
                  ],
                ),
              )
            ]),
            RichText(
                text: TextSpan(
              text: "(new)",
              style: const TextStyle(color: Colors.lightGreen, fontSize: 8),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routers.test);
                },
            ))
          ])
        ]));
  }

  _negativeWidget(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.1, //scale
                spreadRadius: 0.1)
          ],
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      margin: const EdgeInsets.only(top: 10, left: 20),
      padding: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          Image.asset("assets/todo.png"),
          const SizedBox(width: 10),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Send a negative answer",
                    style: TextStyle(color: Colors.black, fontSize: 10))
              ],
            ),
          )
        ]),
        RichText(
            text: TextSpan(
          text: "(new)",
          style: const TextStyle(color: Colors.lightGreen, fontSize: 8),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Get.toNamed(Routers.test);
            },
        ))
      ]),
    );
  }

  _reconsiderWidget(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.1, //scale
                spreadRadius: 0.1)
          ],
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      margin: const EdgeInsets.only(top: 10, left: 20),
      padding: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          Image.asset("assets/todo.png"),
          const SizedBox(width: 10),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                    text: "Reconsider in ",
                    style: TextStyle(color: Colors.black, fontSize: 10)),
                TextSpan(
                  text: "2 days",
                  style: const TextStyle(
                      color: Colors.lightBlueAccent, fontSize: 10),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routers.test);
                    },
                )
              ],
            ),
          )
        ]),
        RichText(
            text: TextSpan(
          text: "(new)",
          style: const TextStyle(color: Colors.lightGreen, fontSize: 8),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Get.toNamed(Routers.test);
            },
        ))
      ]),
    );
  }
}
