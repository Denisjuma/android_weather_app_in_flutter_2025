import 'package:flutter/material.dart';
import 'package:weather_app/screen/weather_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget{
  @override
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: WeatherHomeScreen(),
      debugShowCheckedModeBanner: false,
   

    );
  }
}