import 'package:flutter/material.dart';
import 'package:prayertime/Provider/PrayerPovider.dart';
import 'package:prayertime/Screens/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context) => PrayerPovider(),

      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
    );

  }
}
