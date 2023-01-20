import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
   // ImagePage({Key? key,this.name}) : super(key: key); // for named argument
   ImagePage(this.name, {Key? key,}) : super(key: key);
  String? name;

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool isLike=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Image.network("https://imageio.forbes.com/specials-images/imageserve/5f6c061ca71799093f55fd02/0x0.jpg?format=jpg&crop=5023,3350,x0,y0,safe&width=1200",fit: BoxFit.fill,),
          ),
          SizedBox(height: 10),

         Container(
           height: 450,
           width: 380,
           decoration: BoxDecoration(
             border: Border.all(width: 3,color:Color(0xff67caa0),),
           ),


           child: Column(
             children: [
               SizedBox(height: 10),
               Container(
                 child: Column(
                   children: [
                     Container(
                       height:40,
                       width: 350,

                       decoration: BoxDecoration(
                         color:Color(0xffe6f0fa),
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(width: 1),
                       ),
                       child: Center(child: Text("${widget.name}",
                         style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                       ),
                       ),
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 15),

               Container(
                 height: 140,
                 width: 350,
                 decoration: BoxDecoration(
                   color: Color(0xffe6f0fa),
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(width: 1),
                 ),
                 child: Text("  By default, a row or column occupies as much  space along its main axis as possible, but if you want to pack the children closely together, set its mainAxisSize to MainAxisSize.min. The following example uses this property to pack the star icons together.",
                   style: TextStyle(fontSize: 15,),),
               ),


               SizedBox(height: 10),

               Container(
                 height: 30,
                 width: 350,
                 decoration: BoxDecoration(
                   color: Color(0xffe6f0fa),
                   border: Border.all(width: 1),
                   borderRadius: BorderRadius.circular(5),
                 ),

                 child: Column(
                   children: [
                     Container(
                       height: 28,
                       width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(width: 2,color: Colors.red),
                       ),

                       child:Row(
                         children: [
                           GestureDetector(
                               onTap:(){
                                    isLike=!isLike;

                                    setState(() {

                                    });
                                    print("ISLIKE::::::${isLike}");


                               },
                               child: Icon(Icons.star,color: isLike==true?Colors.red:Colors.blue,)),
                           Icon(Icons.star),
                           Icon(Icons.star),
                           Icon(Icons.star),
                           Icon(Icons.star),

                           SizedBox(width: 80),
                           Text('170 Reviews',)
                         ],
                       ),
                     ),

                   ],
                 ),
               ),

               SizedBox(height: 40),

               Container(
                 height: 100,
                 width: 350,
                 decoration: BoxDecoration(
                   color: Color(0xffe6f0fa),
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(width: 1),
                 ),

                 child: Column(
                   children: [
                     Container(
                       height: 98,
                       width: 250,
                       decoration: BoxDecoration(
                         border: Border.all(width: 2,color: Colors.red),
                         borderRadius: BorderRadius.circular(5),
                       ),

                       child: Row(
                         children: [
                           Column(
                             children: [
                               SizedBox(width: 80,height: 8),
                               Icon(Icons.account_balance_wallet_outlined,color: Color(0xff67caa0),),
                               Text('PREP:'),

                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: SizedBox(height: 10),
                               ),

                               Text('25 min'),
                             ],
                           ),

                           Column(
                             children: [
                               SizedBox(width: 80,height: 8),
                               Icon(Icons.access_alarm_sharp,color: Color(0xff67caa0),),
                               Text('cook:'),

                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: SizedBox(height: 10),
                               ),

                               Text('1 hr'),
                             ],
                           ),
                           Column(
                             children: [
                               SizedBox(width: 80,height: 8),
                               Icon(Icons.emoji_food_beverage,color: Color(0xff67caa0),),
                               Text('FEEDS:'),

                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: SizedBox(height: 10),
                               ),
                               Text('4-6'),
                             ],

                           )
                         ],
                       ),
                     ),
                     
                   ],
                 ),
               ),

             ],
           ),
         ),

        ],

      ),

    );

  }
}



//
//
// Container(
// child: Column(
// children: [
// Container(
// height:40,
// width: 350,
//
// decoration: BoxDecoration(
// color:Color(0xffe6f0fa),
// borderRadius: BorderRadius.circular(5),
// border: Border.all(width: 1),
// ),
// child: Center(child: Text('Strawberry pavlova',
// style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ],
// ),
// ),
//
// SizedBox(height: 15),
//
// Container(
// height: 140,
// width: 350,
// decoration: BoxDecoration(
// color: Color(0xffe6f0fa),
// borderRadius: BorderRadius.circular(5),
// border: Border.all(width: 1),
// ),
// child: Text("  By default, a row or column occupies as much  space along its main axis as possible, but if you want to pack the children closely together, set its mainAxisSize to MainAxisSize.min. The following example uses this property to pack the star icons together.",
// style: TextStyle(fontSize: 15,),),
// ),
//
//
// SizedBox(height: 10),
//
// Container(
// height: 30,
// width: 350,
// decoration: BoxDecoration(
// color: Color(0xffe6f0fa),
// border: Border.all(width: 1),
// borderRadius: BorderRadius.circular(5),
// ),
//
// child: Column(
// children: [
// Container(
// height: 28,
// width: 300,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// border: Border.all(width: 2,color: Colors.red),
// ),
//
// child:Row(
// children: [
// Icon(Icons.star),
// Icon(Icons.star),
// Icon(Icons.star),
// Icon(Icons.star),
// Icon(Icons.star),
//
// SizedBox(width: 80),
// Text('170 Reviews',)
// ],
// ),
// ),
//
// ],
// ),
// ),
//
// SizedBox(height: 40),
//
// Container(
// height: 100,
// width: 350,
// decoration: BoxDecoration(
// color: Color(0xffe6f0fa),
// borderRadius: BorderRadius.circular(5),
// border: Border.all(width: 1),
// ),
//
// child: Column(
// children: [
// Container(
// height: 98,
// width: 250,
// decoration: BoxDecoration(
// border: Border.all(width: 2,color: Colors.red),
// borderRadius: BorderRadius.circular(5),
// ),
//
// child: Row(
// children: [
// Column(
// children: [
// SizedBox(width: 80,height: 8),
// Icon(Icons.account_balance_wallet_outlined),
// Text('PREP:'),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: SizedBox(height: 10),
// ),
//
// Text('25 min'),
// ],
// ),
//
// Column(
// children: [
// SizedBox(width: 80,height: 8),
// Icon(Icons.access_alarm_sharp),
// Text('cook:'),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: SizedBox(height: 10),
// ),
//
// Text('1 hr'),
// ],
// ),
// Column(
// children: [
// SizedBox(width: 80,height: 8),
// Icon(Icons.emoji_food_beverage),
// Text('FEEDS:'),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: SizedBox(height: 10),
// ),
// Text('4-6'),
// ],
// )
// ],
// ),
// ),
// ],
// ),
// ),
