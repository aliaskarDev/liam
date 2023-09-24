import 'package:flutter/material.dart';
import 'package:laim/feature/registration/customer/view/registration_for%20customer.dart';
import 'package:laim/feature/registration/delivery/view/registration_for_delivery.dart';
import 'package:laim/feature/registration/register/view/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => const RegistrationScreen(),
        '/auth_customer': (context) => const AuthForCustomer(),
        '/auth_carrier': (context) => const AuthForCarrier(),
      },
      home: const RegistrationScreen(),
    );
  }
}
