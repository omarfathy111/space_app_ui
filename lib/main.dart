import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:space_app/details_screen.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/login_screen.dart';

void main(){
    DevicePreview.enable();

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName :(context) => LoginScreen(),
        HomeScreen.routeName :(context) => HomeScreen(),
        DetailsScreen.routeName :(context) => DetailsScreen()

      },
    )
    ;
  }

}