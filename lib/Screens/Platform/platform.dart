
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlatFormBody extends StatefulWidget {
  const PlatFormBody({Key? key}) : super(key: key);

  @override
  State<PlatFormBody> createState() => _PlatFormBodyState();
}

class _PlatFormBodyState extends State<PlatFormBody> {
  List<Map> courseData = [
    {
      'heading': 'Anton',
      'img': 'lib/images/milkyway1.jpg',
      'rating': 5,
      'value': 'Paid',
      'descp':
          'This property is used when we want to display data dynamically or on-demand. In other words, if the user wants to create a grid with a large (infinite) number of children, then they can use the GridView.builder() constructor with either a SliverGridDelegateWithFixedCrossAxisCount or a SliverGridDelegateWithMaxCrossAxisExtent'
    },
    {
      'heading': 'Meta',
      'img': 'lib/images/milkyway1.jpg',
      'rating': 3.7,
      'value': 'Paid',
      'descp':
          'In other words, if the user wants to create a grid with a large (infinite) number of children, then they can use the GridView.builder() constructor with either a SliverGridDelegateWithFixedCrossAxisCount or a SliverGridDelegateWithMaxCrossAxisExtent'
    },
    {
      'heading': 'Bettermarks',
      'img': 'lib/images/milkyway1.jpg',
      'rating': 4.8,
      'value': 'Free',
      'descp':
          'This property is used when we want to display data dynamically or on-demand DelegateWithFixedCrossAxisCount or a SliverGridDelegateWithMaxCrossAxisExtent'
    },
    {
      'heading': 'Apple',
      'img': 'lib/images/milkyway1.jpg',
      'rating': 2,
      'value': 'Free',
      'descp':
      'This DelegateWithFixedCrossAxisCount or a SliverGridDelegateWithMaxCrossAxisExtent'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height) / 5),
      margin: EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width) / 18),
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Platforms',
                style: TextStyle(
                    fontSize: (MediaQuery.of(context).size.height) / 25,
                    color: Colors.white),
              )), //35
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Find the Right Learning platform for you',
                style: TextStyle(
                    fontSize: (MediaQuery.of(context).size.height) / 45,
                    color: Colors.white),
              )), //18
          SizedBox(
            height: MediaQuery.of(context).size.height / 75,
          ),

          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 5),
                itemCount: courseData.length,
                itemBuilder: (context, index) {
                  return platformTile(
                      heading: courseData[index]['heading'],
                      img: courseData[index]['img'],
                      rating: courseData[index]['rating'],
                      value: courseData[index]['value'],
                      description: courseData[index]['descp']);
                }),
          )
        ],
      ),
    );
  }

  //-------------------------------------------------------------------------------------------------------
  
  
  Widget platformTile(
      {String heading = 'Blank',
      String img = 'lib/images/milkyway1.jpg',
      num rating = 1.0,
      String value = 'Free',
      String description = 'No description'}) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style:
                      const TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: FittedBox(fit: BoxFit.fill, child: Image.asset(img)))
              ],
            ),
            Row(children: [
              RatingBar.builder(
                  initialRating: rating.toDouble(),
                  allowHalfRating: true,
                  itemSize: 24,
                  minRating: 1.0,
                  ignoreGestures: true,
                  itemBuilder: (context, _) {
                    return const Icon(Icons.star, color: Colors.amber);
                  },
                  onRatingUpdate: (rate) {
                    refresh();
                  }),
              const SizedBox(width: 5),
              Text(rating.toString())
            ]),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  color: Colors.blue,
                  child: Text(value),
                )),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
  

  refresh() {
    setState(() {});
  }
}
