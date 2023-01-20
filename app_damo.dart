

import 'package:flutter/material.dart';
import 'package:startapp/listview.dart';


class Appdemo extends StatefulWidget {
  const Appdemo({Key? key}) : super(key: key);

  @override
  State<Appdemo> createState() => _AppdemoState();
}

class _AppdemoState extends State<Appdemo> {
  var count=0;
  var selected=0;

  void increment() {
    setState(() {
        count++;

    });
  }
    void dcrement(){
      setState(() {
        if(count!= 0){
          count--;
        }
      });

  }

  @override
  Widget build(BuildContext context)=> DefaultTabController(

    length:5,
  child:  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Appbar')),
        // leading: Icon(Icons.manage_accounts),
        actions: [Icon(Icons.more_vert),
        SizedBox(width: 20),
        Icon(Icons.access_time),],

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,Colors.black,
            ])
          ),
        ),


        bottom: TabBar(

          indicatorColor: Colors.black,
          indicatorWeight: 2,
          tabs: [
          Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: 'home',),
          Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: 'home',),
          Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: 'home',),
          Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: 'home',),
          Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: 'home',),
        ],
        ),


      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue,
      //   tooltip: 'this is floatingactionbutten ',
      //   onPressed: (){},child: Icon(Icons.add),
      // )
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            ListTile( title: Text('Gmail',style: TextStyle(fontSize: 30),),),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text('search'),
              ),
            ),
            ListTile(leading:Icon(Icons.account_balance_wallet_rounded),title: Text('All inboxes'),),
            ListTile(leading:Icon(Icons.people_alt_sharp),title: Text('Person'),),
            ListTile(leading:Icon(Icons.outbox),title: Text('Outbox'),),
            ListTile(leading:Icon(Icons.send_to_mobile_sharp),title: Text('Sent'),),
            ListTile(leading:Icon(Icons.adb),title: Text('Spam'),),
            ListTile(leading:Icon(Icons.date_range_outlined),title: Text('Drafts'),),
            ListTile(leading:Icon(Icons.snooze_outlined),title: Text('Snoozed'),),
            ListTile(leading:Icon(Icons.accessible_forward_rounded),title: Text('Bin'),),
          ],
        ),
      ),

     //
     // body:Column(
     //   children: [
     //    TabBarView(
     //     children: [
     //       Center(child: Text('home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
     //       Center(child: Text('home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
     //       Center(child: Text('home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
     //       Center(child: Text('home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
     //       Center(child: Text('home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
     //
     //     ],
     //   ),


       floatingActionButton: FloatingActionButton(
         onPressed: (){
// Navigator.pop(context);
           Navigator.push(context, MaterialPageRoute(builder: (context) => Listview(),),);
         },
         child: Icon(Icons.navigate_next),
       ),
     //     ],
     // ),


     bottomNavigationBar: BottomNavigationBar(
       currentIndex: selected,
       onTap: (index){
         setState(() {
           selected=index;
         });
       },
       type: BottomNavigationBarType.fixed,
       iconSize: 40,
       showUnselectedLabels: true,
       showSelectedLabels: true,
       items: [
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),
         BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: 'gahs'),


       ],
     ),
     //  body:Column(
     //    crossAxisAlignment: CrossAxisAlignment.start,
     //    children: [
     //      Container(
     //        height: 200,
     //        width: 200,
     //        // margin:EdgeInsets.all(5),
     //       decoration: BoxDecoration(
     //        color: Colors.black,
     //        borderRadius: BorderRadius.circular(20),
     //        ),
     //
     //      ),
     //
     //
     //
     //      Row(
     //        children: [
     //          Container(
     //            height: 120,
     //            width: 120,
     //
     //            decoration: BoxDecoration(color: Colors.cyanAccent,
     //              borderRadius: BorderRadius.circular(20)
     //            ),
     //            child: Column
     //              ( crossAxisAlignment: CrossAxisAlignment.start,
     //              children: [
     //                Container(
     //                  height: 50,
     //                  width: 50,
     //
     //                  child: Center(child: Text('afgggfa'),),
     //                  decoration: BoxDecoration(        color: Colors.red,
     //                    borderRadius: BorderRadius.circular(20)
     //                  ),
     //                ),
     //              ],
     //            ),
     //          ),
     //
     //          Container(
     //            margin: EdgeInsets.all(5),
     //            height: 60,
     //            width: 60,
     //            color: Colors.redAccent,
     //          ),
     //
     //
     //        ],
     //
     //      ),
     //    ],
     // ),



      // body: Column(mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text("$count",style: TextStyle(fontSize: 50,color: Colors.redAccent),),
      //
      //     Row(mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         FloatingActionButton(
      //           onPressed: increment,
      //           child: Icon(Icons.add),),
      //
      //         FloatingActionButton(
      //           backgroundColor: Colors.red,
      //           onPressed: dcrement,
      //           child: Icon(Icons.remove),)
      //
      //       ],
      //     )
      //   ],
      // ),
      //
      //


    ),
  );
}
