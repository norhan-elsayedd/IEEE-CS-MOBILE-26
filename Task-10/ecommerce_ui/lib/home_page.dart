import 'package:flutter/material.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List plants = [
    {"name":"Monstera Deliciosa",
      "subtitle": "Easy indoor plant",
      "price":"120 EGP",
      "image":"images/plant1.jpg"},

    {"name": "Cactus",
      "subtitle": "Low maintenance",
      "price": "50 EGP",
      "image": "images/plant2.jpg"},

    {"name": "Snake Plant",
      "subtitle":"Purifies air",
      "price":"90 EGP",
      "image":"images/plant3.jpg"},

    {"name":"Bonsai Tree",
      "subtitle":"Miniature tree",
      "price":"150 EGP",
      "image":"images/plant4.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8F5),
      appBar: AppBar(
        title: Text("GreenLeaf Store🌿",style: TextStyle( color: Color(0xffE8F5E9),fontSize: 30,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  iconColor: Colors.green,
                  icon: Icon(Icons.search),
                  hintText: "Search plants...",
                ),
              ),
            ),

            SizedBox(height: 25),
            Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Column(
                  children: [
                    Container(
                      width: 60, height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8F5E9),
                      ),
                      child: Icon(Icons.eco,color: Colors.green,size: 35,),
                    ),
                    SizedBox(height:8),
                    Text("Indoor",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8F5E9),
                      ),
                      child: Icon(Icons.park, color: Colors.green,size: 35,),
                    ),
                    SizedBox(height: 8),
                    Text("Outdoor",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8F5E9),
                      ),
                      child: Icon(Icons.local_florist, color: Colors.green,size: 35,),
                    ),
                    SizedBox(height: 8),
                    Text("flowers",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8F5E9),
                      ),
                      child: Icon(Icons.shopping_bag, color: Colors.green,size: 35,),
                    ),
                    SizedBox(height: 8),
                    Text("Pots",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),

            SizedBox(height: 25),
            Text("Popular Plants",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder:(_)=> Details(
                            name: plants[index]["name"],
                            price: plants[index]["price"],
                            image: plants[index]["image"],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120,height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage(plants[index]["image"]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(plants[index]["name"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),

                                  Text(plants[index]["subtitle"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[600],),
                                  ),

                                  SizedBox(height: 10),

                                  Text(plants[index]["price"],style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.green,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {currentIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}