import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.list_sharp,
                    size: 30,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.red,
                        size: 30,
                      ),
                      Text(
                        'Account',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ],
                  ),
                  Badge(
                    badgeContent: SizedBox(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.red,
                      size: 35,
                    ),
                  ),
                  // const CircleAvatar(
                  //   radius: 17,
                  //   backgroundColor: Colors.red,
                  //   child: Icon(
                  //     Icons.shopping_bag,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Binod Khanal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text('9867236630 | binodbiplove@gmail.com'),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 15,
              color: Colors.grey[200],
            ),
            Container(
              height: 210,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Saved Address"),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("Notifications"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Offers",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Promos"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Get Discount"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Themes"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Change Details"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
