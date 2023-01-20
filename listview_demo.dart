import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:startapp/image_page.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({Key? key}) : super(key: key);

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  var nameList=["Hello","World","ABC","XYZ"];
  // var userData={
  //   "name":"Dhaval",
  //   "age":"20",
  // };


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Listview'),
        ),

        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
                itemCount:15,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (Context)=>ImagePage(name:nameList[index]!)));  ///name argument

                      Navigator.push(context, MaterialPageRoute(builder: (Context)=>ImagePage(nameList[index]!))); // positional argument
                    },
                    child: Card(
                      color: index.isEven?Colors.green:Colors.blue,
                      child: ListTile(
                        leading: Icon(Icons.people),
                        trailing: Icon(Icons.navigate_next,),
                        title: Text(index.toString()),
                        // subtitle: Text(namePerson['number'][index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 15.h,
              width: 100.w,
              color: Colors.yellow,
            )
          ],
        ),
















        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView.separated(
        //        scrollDirection: Axis.vertical,
        //       itemBuilder: (context,index){
        //     return Center(
        //       child: Container(
        //         height: 9.h,
        //         width: 95.w,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //         color: index.isEven ?Colors.blue:Colors.green,
        //
        //     ),
        //         child:Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: CircleAvatar(
        //                 maxRadius: 30,
        //                 backgroundColor: Colors.black.withOpacity(0.5),
        //                 child: Icon(Icons.manage_accounts_rounded,color:Colors.white,),
        //               ),
        //             ),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text('[$index contect]'),
        //                 SizedBox(height: 5,),
        //                 Text('name :',style: TextStyle(fontWeight: FontWeight.bold),),
        //                 Text('Mo.',style: TextStyle(fontWeight: FontWeight.bold),),
        //               ],
        //             ),
        //             SizedBox(width: 50.w,),
        //             Icon(Icons.navigate_next)
        //       ],
        //
        //         ),
        //       ),
        //     );
        //   }, separatorBuilder: (context,index){
        //     return SizedBox(height: 1.h,);
        //   }, itemCount:20),
        // )
      ),
    );
  }
}
