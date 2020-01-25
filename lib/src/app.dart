import 'package:flutter/material.dart';

import 'package:contador/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPage(),
        ));
  }
}
