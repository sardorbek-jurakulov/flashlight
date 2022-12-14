import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class FlashLight extends StatefulWidget {
  const FlashLight({Key? key}) : super(key: key);

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  String fleshlightStatus = "off";
  String flashlightImageOn = "assets/images/flashlight_on.jpg";
  String flashlightImageOff = "assets/images/flashlight_off.jpg";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Text(
              "Flashlight is $fleshlightStatus",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Image.asset((fleshlightStatus == "off")
                ? "assets/images/flashlight_off.jpg"
                : "assets/images/flashlight_on.jpg"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (fleshlightStatus == "off") {
                fleshlightStatus = "on";
              } else if (fleshlightStatus == "on") {
                fleshlightStatus = "off";
              }
            });
          },
          // child: Icon(
          //   (fleshlightStatus == "off")
          //       ? Icons.flashlight_on_rounded
          //       : Icons.flashlight_off_rounded,
          //   color: Colors.black,
          // ),
          child: Icon(
            fleshlightStatus == "off"
                ? CupertinoIcons.lightbulb_fill
                : CupertinoIcons.lightbulb_slash_fill,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
