import 'package:flutter/material.dart';
import 'package:flutter_act12_20220251/screens/home.dart';
import 'package:hive_flutter/hive_flutter.dart';


Future<void> main() async{
  await Hive.initFlutter();

  await Hive.openBox('favorites');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}