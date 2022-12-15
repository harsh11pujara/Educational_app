import 'package:flutter/material.dart';
import 'lessons_grid.dart';

Widget lessonsBody(BuildContext context, Function refresh){
  TextEditingController searchController = TextEditingController();
  // LessonGrid gridObject = LessonGrid(gridFlag);
  return Container(
    padding:
    EdgeInsets.only(top: (MediaQuery.of(context).size.height) / 5),
    margin: EdgeInsets.symmetric(
        horizontal: (MediaQuery.of(context).size.width) / 18),
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
                    fontSize: (MediaQuery.of(context).size.height) / 45,
                    color: Colors.white),
              )), //18
          SizedBox(
            height: MediaQuery.of(context).size.height / 75,
          ),

          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: Row(children: [
              const SizedBox(width: 20),
              const Icon(Icons.search),
              const SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(5),
                width: 300,
                height: 50,
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for terms like "Geometry"',
                      hintStyle: TextStyle(fontSize: 18)
                  ),
                ),
              ),
            ]),
          ),
          // SizedBox( height: MediaQuery.of(context).size.height / 75),
          gridWidgetData()
        ]),
  );
}
