import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPosts extends StatelessWidget {
  String name;
  String post;
  String people;
  String likedNames;
  String commentName;
  UserPosts({required this.name, required this.people, required this.post,required this.likedNames, required this.commentName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///user pic and name
                  Container(
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(people)
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        ///post
        Container(
          height: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(post),
              fit: BoxFit.fill
            )
          ),
        ),
        ///below the post
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FaIcon(Icons.favorite_border),
                  SizedBox(width: 10,),
                  FaIcon(Icons.chat_bubble_outline),
                  SizedBox(width: 10,),
                  FaIcon(Icons.share_outlined),
                ],
              ),
              FaIcon(Icons.bookmark_add_outlined),
            ],
          ),
        ),

        ///like by
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 5),
          child: Row(
            children: [
              Text("Liked by, "),
              Text(commentName, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(" and "),
              Text("18,345 others", style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: likedNames,
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: "  Hello this is my first post in Instagram"
                  )
                ]
              )),
              SizedBox(height: 3,),
              Text("view 489 comments",style: TextStyle(color: Colors.grey.shade700,),),
              SizedBox(height: 3,),
              Text("2 days ago",style: TextStyle(color: Colors.grey.shade700,),)
            ],
          ),
        )
      ],
    );
  }
}
