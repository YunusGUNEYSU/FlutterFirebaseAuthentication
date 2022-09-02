import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/features/view/home_page.dart';
import 'package:flutter_firebase_auth/features/view/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showHomePage=true;

  void toggleScreens(){
    setState(() {
      showHomePage=!showHomePage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if (showHomePage) {
     return HomePageView(showRegisterPage:toggleScreens );
   }else{
     return RegisterPage(showHomePage:toggleScreens);
   }
  }
}