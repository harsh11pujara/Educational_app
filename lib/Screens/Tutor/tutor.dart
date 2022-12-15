import 'package:flutter/material.dart';
import 'package:ui1_educational_app/Screens/Tutor/show_all_tutor.dart';
import 'package:ui1_educational_app/Screens/Tutor/tutor_details.dart';

class TutorBody extends StatefulWidget {
  const TutorBody({Key? key}) : super(key: key);

  @override
  State<TutorBody> createState() => _TutorBodyState();
}

class _TutorBodyState extends State<TutorBody> {
  int index = 0 ;
  List<Map> tutorData = [
    {
      'name': 'Jack',
      'img': 'lib/images/milkyway1.jpg',
      'icon': Icons.abc,
      'description':
          'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'grade': '1 - 12',
      'longDesc':
          'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'subject': 'english',
      'teaching type': 'online'
    },
    {
      'name': 'Brush',
      'img': 'lib/images/milkyway1.jpg',
      'icon': Icons.hail_outlined,
      'description':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'grade': '1 - 3',
      'longDesc':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'subject': 'hindi',
      'teaching type': 'online'
    },
    {
      'name': 'Chris',
      'img': 'lib/images/milkyway1.jpg',
      'icon': Icons.cable,
      'description':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'grade': '1 - 10',
      'longDesc':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'subject': 'chemistry',
      'teaching type': 'in person'
    },
    {
      'name': 'Tony',
      'img': 'lib/images/milkyway1.jpg',
      'icon': Icons.account_balance,
      'description':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'grade': '1 - 3',
      'longDesc':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'subject': 'physics',
      'teaching type': 'in person'
    },
    {
      'name': 'Tom',
      'img': 'lib/images/milkyway1.jpg',
      'icon': Icons.baby_changing_station,
      'description':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'grade': '1 - 8',
      'longDesc':
      'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      'subject': 'maths',
      'teaching type': 'online'
    }
  ];
  bool detailsFlag = false;

  @override
  Widget build(BuildContext context) {
    return detailsFlag == false
        ? showAllTutor(context, changePageView, refresh, tutorData)
        : tutorDetails(context, changePageView, tutorData, index);
  }

  changePageView(int i) {
    setState(() {
      index = i;
      detailsFlag = !detailsFlag;
    });
  }

  refresh() {
    setState(() {});
  }
}
