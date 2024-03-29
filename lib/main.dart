import 'package:flutter/material.dart';
import 'package:focus_area_app/core/routring/routring.dart';
import 'package:focus_area_app/features/onbaording.dart/data/local_data_source.dart';
import 'package:focus_area_app/splash_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefServ.create();
  runApp(const MyApp());
}

  
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouteing.onGenerateRoute,
      home: SplashScreen()
    );
  }
}