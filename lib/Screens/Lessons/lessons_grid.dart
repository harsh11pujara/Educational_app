import 'package:flutter/material.dart';

class LessonGrid {
  List<Map> gridData = [
    {'icon': Icons.search, 'text': 'Maths'},
    {'icon': Icons.catching_pokemon, 'text': 'Science'},
    {'icon': Icons.map, 'text': 'History'},
    {'icon': Icons.broadcast_on_personal_rounded, 'text': 'Social Science'},
    {'icon': Icons.search, 'text': 'Maths'},
    {'icon': Icons.catching_pokemon, 'text': 'Science'},
    {'icon': Icons.map, 'text': 'History'},
    {'icon': Icons.broadcast_on_personal_rounded, 'text': 'Social Science'},
    {'icon': Icons.search, 'text': 'Maths'},
    {'icon': Icons.catching_pokemon, 'text': 'Science'},
    {'icon': Icons.map, 'text': 'History'},
    {'icon': Icons.broadcast_on_personal_rounded, 'text': 'Social Science'},
  ];

  //Subject Grid
  gridWidgetData() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (7 / 2),
          crossAxisSpacing: 20,
          mainAxisSpacing: 18,
        ),
        itemCount: gridData.length,
        itemBuilder: (context, index) {
          return myTile(icon: gridData[index]['icon'], text: gridData[index]['text'].toString());
        },
      ),
    );
  }

  myTile({required IconData icon, required String text}) {
    return Container(
      height: 150,
      width: 300,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

}
