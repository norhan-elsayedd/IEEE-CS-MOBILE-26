import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/screens/archive_screen.dart';
import 'package:todo_app/screens/done_screen.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:todo_app/widgets/reusable_widget.dart';

class HomeScreen  extends StatefulWidget{
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  final _pageController=PageController(initialPage: 0);
  final NotchBottomBarController _controller =NotchBottomBarController(index: 0);
  final _scaffoldkey= GlobalKey<ScaffoldState>();
  var TitleController=TextEditingController();
  var TimeController=TextEditingController();
  var DateController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isBottomSheetShow=false;

  List<Widget>screens=[
    TasksScreen(),
    ArchiveScreen(),
    DoneScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,

      backgroundColor: Color.fromARGB(169, 186, 171, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(169, 186, 171, 1),
        title:Row(
          children: [
            Icon(Icons.format_list_bulleted_sharp,color: Colors.white,),
            Text("All Tasks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ) ,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children:List.generate(screens.length, (index)=> screens[index]),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if (isBottomSheetShow){
            if(formKey.currentState!.validate()){
              Navigator.pop(context);
              isBottomSheetShow=false;
            }
          }
          else{
            _scaffoldkey.currentState!.showBottomSheet(
            (context){
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      defaultFormField(
                        controller: TitleController, 
                        labelText: "Task Name", 
                        icon: Icons.title, 
                        onTap: () {  }
                      ),
                      const SizedBox(height: 10,),
                      defaultFormField(
                        controller: TimeController, 
                        labelText: "Task Time", 
                        icon: Icons.timer_rounded, 
                        onTap: () { 
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now()
                          ).then((value){
                            TimeController.text=value!.format(context);
                          });
                         }
                      ),
                      const SizedBox(height: 10,),
                      defaultFormField(
                        controller: DateController, 
                        labelText: "Task Date", 
                        icon: Icons.date_range, 
                        onTap: () { 
                          showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                             initialDate: DateTime.now(),
                            lastDate: DateTime.parse("3200-05-09")
                          ).then((value){
                            DateController.text=DateFormat.yMMMd().format(value!);
                          });
                         }
                      ),
                     
                    ],
                  ),
                ),
              );
            }
          ).closed.then((value){
            isBottomSheetShow=false;

          });

          isBottomSheetShow=true;
          }
        },
        backgroundColor: Colors.lime[700],
        child:const Icon(Icons.add,color: Colors.white,size: 30,),
        ),
      
      bottomNavigationBar:AnimatedNotchBottomBar(
        color: Colors.grey,
        notchBottomBarController: _controller,
        notchColor: Colors.black,
        //elevation: ,
        showLabel: true,
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: false,
        durationInMilliSeconds: 300,
        bottomBarItems: [
          bottomBarItem(icon: Icons.home, text: 'Taskes'),
          bottomBarItem(icon: Icons.archive, text: 'Archive'),
          bottomBarItem(icon: Icons.check_box, text: 'Done'),
          
        ],
        onTap: (int value){
          _pageController.jumpToPage(value);
        },
        kIconSize: 24, 
        kBottomRadius: 28,
      ),
    );
  }
}