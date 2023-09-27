import 'package:flutter/material.dart';
class GridViewSampleEg extends StatefulWidget {
  const GridViewSampleEg({super.key});

  @override
  State<GridViewSampleEg> createState() => _GridViewSampleEgState();
}

class _GridViewSampleEgState extends State<GridViewSampleEg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Grid view"),),
      body: GridView(gridDelegate:

          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),

        children: [
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg'),
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg'),
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg'),
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg'),
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg')
        ],
      ),
    );
  }
}
