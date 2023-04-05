import 'package:flutter/material.dart';
import 'package:gold_loan/views/Login_Page.dart';
import 'package:gold_loan/views/Report.dart';
import 'package:gold_loan/views/customercreation.dart';
import 'package:gold_loan/views/gold_loan.dart';
import 'package:gold_loan/views/logout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        CustomerCreation.routeName: (context) => const CustomerCreation(),
        GoldLoan.routeName: (context) => const GoldLoan(),
        Report.routeName: (context) => const Report(),
        LogOut.routeName: (context) => const LogOut(),
      },
    );
  }
}
