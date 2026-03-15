import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  final String price;
  final String image;

  Details({required this.name,required this.price,required this.image,
  });

  @override
  State<Details> createState()=> _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8F5),
      appBar: AppBar(
        title:Center(child: Text("GreenLeaf Store 🌿",style: TextStyle( color: Color(0xffE8F5E9),fontSize: 30,fontWeight: FontWeight.bold ),))
        ,backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }
        , icon: (Icon(Icons.arrow_circle_left_outlined,color: Color(0xffE8F5E9)))),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,height: 350, 
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE8F5E9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green,),
                        ),
                        Text(widget.price,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green,),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    Text("A beautiful plant that adds natural vibes to your home❤️",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700],),
                    ),

                    SizedBox(height: 10),
                    
                    Text("How to Care",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 8),
                    Text("- Place in indirect sunlight\n- Water once a week\n- Use well-draining soil",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700], ),
                    ),

                    SizedBox(height: 10),
                    Text("Plant Details",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 8),
                    Text("- Type: Indoor plant\n- Size: Medium\n- Lifespan: Long\n- Benefits: Purifies air and adds natural beauty to your home",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700],),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 12,
                          ),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child:Text("Add To Cart",style: TextStyle( color: Color(0xffE8F5E9),fontSize: 16,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}