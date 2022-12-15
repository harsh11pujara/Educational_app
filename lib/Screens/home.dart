import 'package:flutter/material.dart';
import 'package:ui1_educational_app/Screens/Home/app_bar.dart';
import 'package:ui1_educational_app/Screens/Home/tutor_app_bar.dart';
import 'package:ui1_educational_app/Screens/Lessons/lessons.dart';
import 'package:ui1_educational_app/Screens/News/news.dart';
import 'package:ui1_educational_app/Screens/Platform/platform.dart';
import 'package:ui1_educational_app/Screens/Tutor/tutor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItem = 0;
  bool appBarFlag = false;
  bool gridFlag = false;

  refresh(){
    setState(() {
    });
  }


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [lessonsBody(context, refresh), const PlatFormBody(),newsBody(),const TutorBody()];

    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      extendBodyBehindAppBar: true,
      appBar: appBarFlag == false ? myAppBar(context) : tutorAppBar(context),
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) / 3,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('lib/images/milkyway1.jpg'),
            ),
          ),
            Expanded(
              child: Container(
                color: Colors.black12,
              ),
            )
          ]
        ),
        pages[selectedItem]
      ]),
      bottomNavigationBar: myNavBar()
    );
  }

  _onItemTap(int index) {
    setState(() {
      selectedItem = index;
      if(index == 3){
        appBarFlag = true;
      }else{
        appBarFlag = false;
      }
    });
  }



  BottomNavigationBar myNavBar(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.school), label: 'Lessons'),
        BottomNavigationBarItem(
            icon: Icon(Icons.screenshot),
            label: 'Platforms'),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'News'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people), label: 'Tutor')
        // backgroundColor: Colors.blue)
      ],
      currentIndex: selectedItem,
      selectedItemColor: Colors.blue,
      onTap: _onItemTap,
      backgroundColor: Colors.white,
    );
  }
}
