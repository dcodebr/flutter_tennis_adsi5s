import 'package:flutter/material.dart';
import 'package:flutter_tennis/screens/club_list_screen.dart';
import 'package:flutter_tennis/screens/club_reservation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(scrollbars: false),
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/clubs',
      routes: {
        '/clubs': (context) => ClubListScreen(),
        '/clubs/reservation': (context) => ClubReservationScreen(),
      },
    );
  }
}
