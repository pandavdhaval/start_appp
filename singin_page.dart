import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SinginPage extends StatefulWidget {
  const SinginPage({Key? key}) : super(key: key);

  @override
  State<SinginPage> createState() => _SinginPageState();
}

class _SinginPageState extends State<SinginPage> {
  List <String> namelist = ["you","vky","roky","rk","sing","kl"];
  List <String> namelist1 = ["modi bjp","vky","roky","rk","sing","kl"];
  var arryimages = [
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQexrw0OU0MIXZyM8Tq_CpbGRmP8liHmj6P1w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaOdUUfjcKjr56GGLqQvFTDRkXtN00ET8A2g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmCMx8ohihVu1SWI4F7UMDOc5hY1R1kz0USw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD7n_EeOoZPvcFXMaKfJYwgbSvOX1Uj5A6Sw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG4wIbWNUt9OHMuw8l4badq30Z02gh5Og7mg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjTGh0R2907ZwE8sCVN7wWQqnsHrZaJ5PB1w&usqp=CAU",
  ];
  var arryimage1 =[
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCW4tN16MKSDUShyTHm2Cv8s5FZx5_S-91pg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS91KdMI3INA3v1nNnRZWD9aQFJTosDmRfZzw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmHIfuWwREzkeKT966mZy5z1iNa_wfmwh7g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtrLylbokIRUlqFv-Ut7au7F7jjUab6D7Ulw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkraJQE2g-lJ66FKkPwMTaEwclG3NdQ56CJg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTybn8UPDcxSqYI6_PAFuI0bsbc6qsSpW30FNNG0vfFM2ZyL3ProJJS4bdqKyNiazUzuI0&usqp=CAU",
  ];
  var selected= 0;
  var like =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                 height: 13.h,
                  width: 200.w,
                  color: Colors.white,
                  child:  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35,left: 25),
                        child: Column(
                          children: [
                            Text('Welcome back !',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Hi, welcome to instragram'),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 150),
                      child: Icon(Icons.message_rounded),

                    ),
                    ],
                  ),
                ),
                Container(
                  // height: 11* double.parse(8.toString()),
                  height: 13.h,
                  width: 100.w,
                  color:Colors.white,

                  child: ListView.builder(
                      itemCount: namelist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(arryimages[index]),
                            // backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjTGh0R2907ZwE8sCVN7wWQqnsHrZaJ5PB1w&usqp=CAU"),
                            maxRadius: 30,
                          ),
                          SizedBox(height: 1.h),
                          Text(namelist[index],style: TextStyle(fontWeight: FontWeight.bold),),

                        ],
                      ),
                    );
                  }),
                ),
                Container(
                  height: 150.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.separated(itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 57.h,
                          width: 85.w,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               CircleAvatar(
                                 maxRadius: 25,
                                 backgroundImage:NetworkImage(arryimages[index],),
                               ),
                                 SizedBox(width: 1.w),
                                 Column(
                                   children: [
                                    Text(namelist1[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text('45 surat '),
                                     ),
                                   ],
                                 ),
                                  SizedBox(width: 40.w,),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                             SizedBox(height: 1.h),
                             Container(
                               height: 35.h,
                               width: 85.w,

                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                   image: NetworkImage(arryimage1[index],),fit: BoxFit.fill,
                                 )
                                 // border: Border.all(width: 2),
                               ),
                             ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                     onTap: (){
                                       like=!like;
                                       setState(() {
                                       });
                                     },
                                         child: Icon(Icons.favorite,color: like==true? Colors.red:Colors.black,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(Icons.mode_comment_outlined),
                                    ),
                                    Icon(Icons.send_and_archive_outlined),
                                    SizedBox(width: 52.w),
                                    Icon(Icons.save_alt_sharp),
                                  ],
                                ),
                              ),
                              Text('100 likes',style:TextStyle(fontWeight: FontWeight.bold),),
                              Text('all is word mahadev'),
                            ],

                          ),
                        ),
                      ],
                    );
                  }, separatorBuilder: (context,index){
                    return SizedBox(width: 1.w);
                  }, itemCount: namelist1.length),
                )
              ],
            ),
          ),



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected=index;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

        ],
      ),


    );
  }
}
