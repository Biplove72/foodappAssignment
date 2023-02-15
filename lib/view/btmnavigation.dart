
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:restro_app/view/home.dart';
import 'package:restro_app/view/myrestrofirstpage.dart';
import 'Account.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {


  static const List<Widget> _widgetOptions=<Widget>[
    HomePage(),
    Account(),
    Account(),
    Account()


  ];
  int selectedIndex=0;


  void ontapped(int index){
    setState(() {
      selectedIndex=index;

    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar:BottomNavigationBar(

          items: const [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home,),
              label: 'Home',
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Mylist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,

              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(

                Icons.settings,

                shadows: [
                ],
              ),
              label: 'Setting',
            ),
          ],
        type: BottomNavigationBarType.shifting,
        onTap:ontapped,
        selectedItemColor: Colors.red[800],
        currentIndex: selectedIndex,

      ),
      

    );
  }
}
