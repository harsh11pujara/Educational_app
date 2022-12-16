import 'package:flutter/material.dart';
import 'lessons_grid.dart';

Widget lessonsBody(BuildContext context, Function refresh){
  TextEditingController searchController = TextEditingController();

  double screenWidth = MediaQuery.of(context).size.width;  //360
  double screenHeight = MediaQuery.of(context).size.height;  //712

  return Container(
    padding:
    EdgeInsets.only(top: (screenHeight) / 5),
    margin: EdgeInsets.symmetric(
        horizontal: (screenWidth) / 18),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Learning Material',
                style: TextStyle(
                    fontSize: (MediaQuery.of(context).size.height) / 25,
                    color: Colors.white),
              )), //35
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search for Learning Material',
                style: TextStyle(
                    fontSize: (screenHeight) / 45,
                    color: Colors.white),
              )), //18
          SizedBox(
            height: screenHeight / 75,
          ),

          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: Row(children: [
              const SizedBox(width: 20),
              const Icon(Icons.search),
              SizedBox(width: screenWidth/60),
              Container(
                padding: const EdgeInsets.all(5),
                width: screenWidth/1.5,
                height: screenHeight/15,
                child: Center(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for terms like "Geometry"',
                        hintStyle: TextStyle(fontSize: screenHeight/45)
                    ),
                  ),
                ),
              ),
            ]),
          ),
          // SizedBox( height: MediaQuery.of(context).size.height / 75),
          gridWidgetData(context)
        ]),
  );
}
