import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:restro_app/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
     var width = MediaQuery.of(context).size.width;

    List<Items> foods=[
      Items(
          name: 'pizza',
          category: 'Pizza',
          image: 'assets/burger/pizza 3.jpg',
          price: 200,
      ),
      Items(
          name: 'chicken-burger',
          category: 'Burger',
          image: 'assets/burger/burger2.jpg',
          price: 300
      ),
      Items(
          name: 'cake',
          category: 'cake',
          image: 'assets/burger/burger1.jpg',
          price: 100
      ),

    ];
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.white,

        toolbarHeight:
            110, //title: const Text('pizza app',style: TextStyle(color: Colors.black12),),
        title: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.list),
                  color: Colors.black,
                ),
                SizedBox(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                    label: const Text(
                      'Chicago Lil',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
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
              ],
            ),
            Container(
              height: height*0.067,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text('Search your delicious food',
                        style: TextStyle(color: Colors.black26)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body:
         Column(

          children: [
            SizedBox(

            height: height*0.33,
              child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foods.length,
            itemBuilder: (context,index){
              return Categorye( foods: foods[index],);
            })
    // scrollDirection: Axis.horizontal,
    // children: [
    //   for(Items food in foods)
    //  Category(
    //
    //    food: food,
    //
    //  ),
    // ],
          ),

            SizedBox(height: 5,),
            SizedBox(
              height: height*0.35,

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: foods.length,
                itemBuilder: (context,index){
                    return Fooditems(foods: foods[index],);
                },

              ),
            )
    ]

    ),

    );
  }
}

class Fooditems extends StatelessWidget {
  final Items foods;
  const Fooditems({
    Key? key,required this.foods
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(foods.image),
    );
  }
}

class Categorye extends StatelessWidget {

final Items foods;

  const Categorye({
    Key? key,required this.foods


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            Container(
              height: 100,
                margin: EdgeInsets.only(top: 10,bottom: 5,left: 10,right: 10),
                // padding: EdgeInsets.only(top: 10,bottom: 5),
                child: Image.asset(foods.image,fit: BoxFit.cover,)),
            Icon(Icons.navigate_next),
            Text(foods.category),
            Text(foods.name),
          ],
        ),
      );

  }
}



