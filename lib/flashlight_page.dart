import "package:flutter/material.dart";

class FlashLight extends StatefulWidget {
  const FlashLight({Key? key}) : super(key: key);

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  String fleshlightStatus = "off";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Text("Flashlight is $fleshlightStatus"),
            Image.asset("assets/images/flashlight_off.jpg"),
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
            child: Icon(Icons.arrow_back)),
      ),
    );
  }
}
