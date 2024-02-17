import 'package:coduapp/home/home.dart';
import 'package:coduapp/login/login_page.dart';
import 'package:coduapp/login/saveUser/saveUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  return runApp(
      GetMaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: init(),
        builder: (context, value) {
          if (value.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return value.hasData ? HomePage() : LoginPage();
        },
    );
  }

  Future init() async {
    String? number = await SaveUser.getNumber();
    print(number);
    return number;
  }
}
