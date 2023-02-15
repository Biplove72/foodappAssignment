import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:restro_app/view/btmnavigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Center(child: Container(

            color: Colors.blue,
          ),),
          bottomNavigationBar: BottomNavigation()),
    );
  }
}
