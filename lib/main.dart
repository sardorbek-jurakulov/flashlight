import 'package:flutter/material.dart';
import 'package:fleshlight/flashlight_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlashLight(),
    );
  }
}

// git init
// git add .
// git commit -m "WIP"
// git pull
// git push
// git status


// git remote add origin "https://github.com/sardorbek-jurakulov/flashlight.git";
// git pull origin main --allow-unrelated-histories
// git push -u origin main
// git config --glob user.name="sardor-juraku"
// git config --glob user.email=""
// git remote -v

// git clone https://github.com/sardorbek-jurakulov/my_number_pad.git