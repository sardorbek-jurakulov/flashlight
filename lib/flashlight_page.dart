import "package:flutter/material.dart";

class FlashLight extends StatefulWidget {
  const FlashLight({Key? key}) : super(key: key);

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const Text("Flashlight is on/off"),
            Image.asset("assets/images/flashlight_off.jpg"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.arrow_back)),
      ),
    );
  }
}
