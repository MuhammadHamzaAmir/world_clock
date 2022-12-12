import 'package:flutter/material.dart';
import 'package:world_time_clock/screens/choose_location.dart';
import 'package:world_time_clock/screens/home.dart';
import 'package:world_time_clock/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation(),
    },
  ));
}