import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Lyree(),
    ),
  );
}

class Lyree extends StatelessWidget {
  const Lyree({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lyree',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff18181b),
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
        debugShowCheckedModeBanner: false);
  }
}
