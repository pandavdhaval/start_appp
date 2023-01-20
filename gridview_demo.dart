

import 'package:flutter/material.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({Key? key}) : super(key: key);

  @override
  State<GridviewDemo> createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridviewDemo'),
      ),
      body:
     GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisSpacing: 12,
       mainAxisSpacing: 10,
       crossAxisCount: 2,

     ),
        // scrollDirection: Axis.horizontal,
       // shrinkWrap: true,

       children: [
         Image.network('https://picsum.photos/250?image=1'),
         Image.network('https://picsum.photos/250?image=2'),
         Image.network('https://picsum.photos/250?image=3'),
         Image.network('https://picsum.photos/250?image=4'),
         Image.network('https://picsum.photos/250?image=5'),
         Image.network('https://picsum.photos/250?image=6'),
         Image.network('https://picsum.photos/250?image=7'),
         Image.network('https://picsum.photos/250?image=8'),
         Image.network('https://picsum.photos/250?image=9'),
         Image.network('https://picsum.photos/250?image=10'),
         Image.network('https://picsum.photos/250?image=11'),
         Image.network('https://picsum.photos/250?image=12'),
         Image.network('https://picsum.photos/250?image=1'),
         Image.network('https://picsum.photos/250?image=2'),
         Image.network('https://picsum.photos/250?image=3'),
         Image.network('https://picsum.photos/250?image=4'),
         Image.network('https://picsum.photos/250?image=5'),
         Image.network('https://picsum.photos/250?image=6'),
         Image.network('https://picsum.photos/250?image=7'),
         Image.network('https://picsum.photos/250?image=8'),
         Image.network('https://picsum.photos/250?image=9'),
         Image.network('https://picsum.photos/250?image=10'),
         Image.network('https://picsum.photos/250?image=11'),
         Image.network('https://picsum.photos/250?image=12'),
       ],
     ),
    );
  }
}
