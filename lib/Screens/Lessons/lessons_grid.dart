import 'package:flutter/material.dart';

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
  gridWidgetData(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;  //360
    double screenHeight = MediaQuery.of(context).size.height;  //712

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.fromLTRB(0, screenHeight/50, 0, 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (7 / 2),
          crossAxisSpacing: 20,
          mainAxisSpacing: 18,
        ),
        itemCount: gridData.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: (){
               if( gridData.length - 1 == index){
                 showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                   context: context, builder: (context) {
                   return GridView.builder(padding: const EdgeInsets.only(top: 20,left: 30,right: 30),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     childAspectRatio: (7 / 2),
                     crossAxisSpacing: 20,
                     mainAxisSpacing: 18,
                   ),itemCount: gridData.length, itemBuilder: (context, index) => myTile(icon: gridData[index]['icon'], text: gridData[index]['text'].toString(),),);
                 },);
               }
              },
              child: myTile(icon: gridData.length - 1 == index ? Icons.add : gridData[index]['icon'], text: gridData.length - 1 == index ? "10 More" : gridData[index]['text'].toString()));
        },
      ),
    );
  }

  Widget myTile({required IconData icon, required String text}) {
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
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }


