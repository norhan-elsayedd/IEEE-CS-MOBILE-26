import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[900],
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Nina",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
          Icon(Icons.favorite_border,color: Colors.white,),],
               ),
        ),

        body: Container(
          color: Colors.brown[400],
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:Border.all(width: 2),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.person,color: Colors.brown[800],size: 60,weight:100 , )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Norhan Elsayed", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black,),),
                          Text("Flutter Developer",style: TextStyle(fontSize: 15,color: Colors.brown[700] ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:Border.all(width: 2),
                ),
                child: Text("What a glorious set of stairs we make!!", textAlign: TextAlign.center ,
                  style: 
                  TextStyle(color: Colors.black, fontSize:20, fontWeight:FontWeight.w600, fontStyle: FontStyle.italic ),
                ),
              ),

               Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:Border.all(width: 2),

                ),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      Icon(Icons.star_rounded , color: Colors.amber[100],size:25 ,),
                      Icon(Icons.star_rounded , color: Colors.amber[100],size:25 ,),
                      Icon(Icons.star_rounded , color: Colors.amber[100],size:25 ,),
                      Icon(Icons.star_rounded , color: Colors.amber[100],size:25 ,),
                      Icon(Icons.star_half_rounded , color: Colors.amber[100],size:25 ,),
                    ], 
                    ),
                    Text("150 Reviews",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
                    Icon(Icons.share,size: 25,color: Colors.brown[700],fontWeight: FontWeight.bold,)
                  ],
                ),
              ),

               Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:Border.all(width: 2),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.code, color: Colors.brown[700],fontWeight:FontWeight.bold , size: 25,),
                        Text('EXP:',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black,fontSize: 18),),
                        Container(height: 10,),
                        Text("1 week🤣",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.bug_report_sharp,color: Colors.brown[700],fontWeight:FontWeight.bold , size: 25,),
                        Text('Bugs:',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black,fontSize: 18),),
                        Container(height: 10,),
                        Text("جبنه اسطنبولى",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.coffee,color: Colors.brown[700],fontWeight:FontWeight.bold , size: 25,),
                        Text('Coffee:',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black,fontSize: 18),),
                        Container(height: 10,),
                        Text("∞",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15))
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)), 
                  border: Border.all(width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.gps_fixed,color: Colors.brown[800],size: 18,),
                        Container(width: 8), 
                        Text("My Hobbies:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown[900],)),
                      ],
                    ),
                    Container(height: 5,),
                    Text("1. Daydreaming", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                    Text("2. Watching Movies",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                    Text("3. Journaling", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}