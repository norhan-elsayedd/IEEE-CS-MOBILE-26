import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final int result;
  final int age;
  final bool isMale;
  final String category;

  ResultPage({
    required this.result,
    required this.age,
    required this.isMale,
    required this.category
  });

  @override
  Widget build(BuildContext context) {

    Color categoryColor = Colors.grey;
    switch(category){
      case "Underweight":
        categoryColor = Colors.lightBlue;
        break;
      case "Normal":
        categoryColor = Colors.green;
        break;
      case "Overweight":
        categoryColor = Colors.orange;
        break;
      case "Obese":
        categoryColor = Colors.red;
        break;
      default:
        categoryColor = Colors.grey;
    }
    return Scaffold(
      backgroundColor: Color(0xff1F1F2E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("BMI Result",
        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),    
              child: Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Your BMI cuiteeeee",style: TextStyle(color: Colors.white70,fontSize:30,fontWeight: FontWeight.bold,),),
                    Icon(Icons.favorite_rounded ,color: Colors.pink[800],size: 30,),
                  ],
                ) 
              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color(0xff2C2C3E),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0,5),
                  )
                ],
              ),    
              child: 
              Column(
                children: [
                  Text("$result",style: TextStyle(fontSize:60,fontWeight:FontWeight.bold,color: Colors.white,),),

                  SizedBox(height:10),

                  Text(category,style: TextStyle(fontSize:28,fontWeight:FontWeight.bold,color: categoryColor,),),
                ],
              ),
            ),
            SizedBox(height:40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff2C2C3E),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                       color: Colors.black26,
                       blurRadius: 10,
                       offset: Offset(0,5),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(isMale ? Icons.male : Icons.female,
                       color: Color(0xff6C63FF),size:40,
                      ),
                      SizedBox(height:8),
                      Text(isMale ? "Male" : "Female",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff2C2C3E),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                       color: Colors.black26,
                       blurRadius: 10,
                       offset: Offset(0,5),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.timeline,color: Color(0xff6C63FF),size:40,
                      ),

                      SizedBox(height:8),

                      Text("Age $age",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height:40),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6C63FF),
                  padding: EdgeInsets.symmetric(vertical:16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                child:Text("Recalculate",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold,),),

              ),

            )
          ],
        ),
      ),
    );
  }
}