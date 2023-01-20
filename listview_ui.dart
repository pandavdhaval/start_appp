import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:startapp/singin_page.dart';

class listviewUi extends StatefulWidget {
  const listviewUi({Key? key}) : super(key: key);

  @override
  State<listviewUi> createState() => _listviewUiState();
}

class _listviewUiState extends State<listviewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Stack(
            children: [
              Container(
                height: 100.h,
                width: 110.w,
                color: Color(0xffd3d3d3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.network('https://cdn.cms-twdigitalassets.com/content/dam/help-twitter/en/twitter-tips/desktop-assets/ch-02/ch-2-7-app-store.png.twimg.1920.png',fit: BoxFit.cover,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 30),
                    child: Text('Skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Positioned(
                top: 430,
                child: Container(
                  height: 45.h,
                  width: 100.w,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 5.h,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Following Friends',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                      Text('News is Now Faster',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                      SizedBox(height: 5.h,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('shar what your up to, or see whats',style: TextStyle(fontSize: 20),),
                      ),
                      Text('new from others all over the word.',style: TextStyle(fontSize: 18),),

                      SizedBox(height: 5.h),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SinginPage()));
                        },
                        child: Container(
                          height: 5.h,
                          width: 40.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                          child: Center(child: Text('Sing with e-mail',style: TextStyle(color: Colors.white),)),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              ],
          ),

        ],
      ),

    );
  }
}
