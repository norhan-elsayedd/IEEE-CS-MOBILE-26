import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      body: Stack(
        children: [
          Container(
            height:670,
            width:double.infinity,
            child:Image.asset("images/72d9af964d384fc2a16fd087c1062a7c.jpg",fit: BoxFit.fill,),
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize:0.25,
            maxChildSize: 0.9,
            builder:(context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.vertical(top:Radius.circular(30),),
                ),

                child:ListView(
                  controller: scrollController,
                  padding:EdgeInsets.all(20),
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Chicken Avocado Salad",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                            Text("By Nina",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                          ],
                        ),

                        Row(
                          children: [
                          Icon(Icons.stars_rounded,color: Colors.amberAccent, size: 35),
                          SizedBox(width: 5),
                          Text("4.7",style: TextStyle(color: Colors.amber,fontSize: 22,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      ],
                    ),


                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.purple[50],
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.timer,color: Colors.purple,size: 40,),
                              SizedBox(height:5),
                              Text("40-55min",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),

                        Container(
                          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.purple[50],
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.person_outline,color: Colors.purple,size: 40,),
                              SizedBox(height: 5),
                              Text("Serves 2",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),

                        Container(
                          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.purple[50],
                          ),

                          child: Column(
                            children: [
                              Icon(Icons.local_fire_department_outlined,color: Colors.purple,size: 40,),
                              SizedBox(height: 5),
                              Text("Easy",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 30),

                     Row(
                      children: [
                        Text("Ingredients",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                        SizedBox(width: 8),
                        Icon(Icons.shopping_cart_sharp,color: Colors.purple,size: 40,),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Text("For the Salad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        SizedBox(width: 8),
                        Icon(Icons.restaurant_menu_rounded,color: Colors.purple,size: 20,),
                      ],
                    ),

                    SizedBox(height: 18),
                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("2", style: TextStyle(color: Colors.grey[600] )),),
                        Expanded(child: Text("Grilled chicken breast, sliced",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("1", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Avocado",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("2", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Boiled eggs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("70 g", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Cherry tomatoes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("2 cups", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Fresh lettuce(or mixed greens)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("20 g", style: TextStyle(color: Colors.grey)),),
                        Expanded(child: Text("Red onion, sliced",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Text("For the Salad Dressing",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        SizedBox(width: 8),
                        Icon(Icons.soup_kitchen,color: Colors.purple,size: 20,),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("2 tbsp", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Olive oil",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("1 tbsp", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("lemon juice",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("1 tbsp", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Honey",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        SizedBox(width: 90,
                        child: Text("to taste", style: TextStyle(color: Colors.grey[600])),),
                        Expanded(child: Text("Salt & Black pepper",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      )
      ),
    );
  } 
 }