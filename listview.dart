
import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          title: Text('Listview'),
        ),
       body:


        ListView.separated(itemBuilder: (context,position){
          return Card(
           child: ListTile(
             leading: Icon(Icons.call),
             title: Row(
               children: [
                 // Icon(Icons.call),
                 SizedBox(width: 10),
                 Text(
                   position.toString(),
                   // 'list $position',
                   style: TextStyle(fontSize: 20),
                 ),
                 SizedBox(width: 20),
                 Column(
                   children: [
                     Text('jgdhsg'),
                     Text('jhsdghd'),
                   ],
                 ),

               ],
             ),
           ),
          );
        }, separatorBuilder: (context,position){
          return Card(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'hagsh $position'
              ),
            ),
          );
        }, itemCount: 20),





      //
      // ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: CircleAvatar(
      //         maxRadius: (50),
      //         child: Icon(Icons.people_alt_sharp,
      //         size: 50,),
      //       ),
      //     ),
      //
      //     Center(child: Text("bsjfcdjsbcd",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
      //     Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: Text(' "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum  will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like',
      //       style: TextStyle(fontSize: 20),),
      //     ),
      //   ],
      // ),
      //


    );
  }
}
