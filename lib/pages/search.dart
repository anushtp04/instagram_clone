import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserSearch extends StatelessWidget {
  var images = [
    "assets/pics/1.jpg",
    "assets/pics/12.jpg",
    "assets/pics/3.jpg",
    "assets/pics/4.jpg",
    "assets/pics/5.jpg",
    "assets/pics/6.jpg",
    "assets/pics/7.jpg",
    "assets/pics/8.jpg",
    "assets/pics/9.jpg",
    "assets/pics/10.jpg",
    "assets/pics/11.jpg",
    "assets/pics/12.jpg",
    "assets/pics/1.jpg",
    "assets/pics/5.jpg",
    "assets/pics/3.jpg",
    "assets/pics/4.jpg",
    "assets/pics/5.jpg",
    "assets/pics/6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.white,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.grey.shade300,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    )),
              ),
            ),
          ),
        ),
        // body: GridView.builder(
        //   itemCount: images.length,
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: EdgeInsets.all(2),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage(images[index]), fit: BoxFit.fill),
        //         ),
        //       ),
        //     );
        //   },
        // ),
        body: GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                repeatPattern: QuiltedGridRepeatPattern.same,
                pattern: [
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),

                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),

                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(2, 1),

                  QuiltedGridTile(2, 3),



                ]),
            childrenDelegate: SliverChildBuilderDelegate(
                childCount: images.length, (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.fill),
                ),
              );
            })),
      ),
    );
  }
}
