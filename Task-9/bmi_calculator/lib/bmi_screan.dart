import 'package:flutter/material.dart';
import 'package:bmi_calculator/result_page.dart';

class BmiScrean extends StatefulWidget {
  @override
  _BmiScrean createState()=> _BmiScrean();
}
class _BmiScrean extends State<BmiScrean> {

  bool isMale=true;
  double height=170;
  int weight=60;
  int age=20;
  String getBMIcategory(double bmi){
    if(bmi<18.5) return "Underweight";
    else if(bmi<25) return "Normal";
    else if(bmi<30) return "Overweight";
    else return "Obese";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff1F1F2E),
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation:0,
        title:Text("BMI Calculator",style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),)
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = true;
                      });
                    },

                    child: 
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: isMale? Color(0xff6C63FF): Color(0xff2C2C3E),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0,5),
                          )
                        ],
                      ),

                      child: Column(
                        children: [
                          Icon(Icons.male,size: 50,color: Colors.blue[100]),
                          SizedBox(height: 8),
                          Text("Male",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: 
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: !isMale? Color(0xff6C63FF): Color(0xff2C2C3E),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0,5),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.female,size:50,color: Colors.pink[100]),

                          SizedBox(height: 8),

                          Text("Female",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2C2C3E),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0,5),
                  )
                ],
              ),

              child: Column(
                children: [
                  Text("HEIGHT",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),

                  SizedBox(height: 10),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${height.toInt()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,),
                        ),

                        TextSpan(
                          text: " cm",style: TextStyle(fontSize: 20,color: Colors.white70,),
                        )

                      ],
                    ),
                  ),
                  Slider(
                    activeColor: Color(0xff6C63FF),
                    inactiveColor: Colors.white24,
                    value: height,
                    min: 100,
                    max: 250,
                    onChanged: (value){
                      setState(() {
                        height = value;
                      });
                    },
                  )
                ],
              ),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xff2C2C3E),
                      child: Text("$weight",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(height: 10),
                    Text("Weight",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Color(0xff2C2C3E),
                          child: IconButton(
                            icon: Icon(Icons.remove,color: Colors.white),
                              onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ),

                        SizedBox(width: 20,),

                        CircleAvatar(
                          backgroundColor: Color(0xff2C2C3E),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.white),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xff2C2C3E),
                      child: Text("$age",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),

                    SizedBox(height: 10),
                    Text("Age", style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),

                   Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Color(0xff2C2C3E),
                          child: IconButton(
                            icon: Icon(Icons.remove,color: Colors.white),
                              onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ),

                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundColor: Color(0xff2C2C3E),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.white),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 80,),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6C63FF),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: (){
                  double result =weight / ((height/100)*(height/100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:(context)=> ResultPage(
                        result: result.toInt(),
                        age: age,
                        isMale: isMale,
                        category: getBMIcategory(result),
                      ),
                    ),
                  );
                },
                child: Text("Calculate BMI",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ),
    );
  }
}