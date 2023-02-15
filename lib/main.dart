import 'package:flutter/material.dart';
import 'package:restro_app/view/myrestrofirstpage.dart';



void main(){

  runApp(Myrestro());



}

class Myrestro extends StatelessWidget {
  const Myrestro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home() ,
    );
  }
}





