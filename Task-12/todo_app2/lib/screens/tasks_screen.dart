import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget{

   final List<Map>tasks;
   const TasksScreen({super.key, required this.tasks});
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.88,
            height: MediaQuery.of(context).size.height*0.788,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
      
            ),
            child: ListView.separated(
              itemBuilder: (context,index)=>
                ListTile(
                  leading:IconButton(onPressed: (){}, icon: Icon(Icons.check_box,color: Colors.white,)) ,
                  title: Row(
                    children: [
                      Text(tasks[index]['title'],
                      overflow:TextOverflow.ellipsis ,
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),

                      IconButton(onPressed: (){}, icon: Icon(Icons.archive,color: Colors.white,)
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.white,)
                      )
                    ],
                  ),
                  subtitle:Padding(
                    padding: const EdgeInsets.only(left: 20,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tasks[index]['time'],style: TextStyle(color: Colors.grey[200],fontSize: 17),),
                        Text(tasks[index]['date'],style: TextStyle(color: Colors.grey[200],fontSize: 17),)
                      ],
                    ),
                  ) ,
                ),
              separatorBuilder: (context,index)=>Divider(),
              itemCount: tasks.length,
            )
          
          )
        ],
      ),
    );
  }
}