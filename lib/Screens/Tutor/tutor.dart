import 'package:flutter/material.dart';
import 'package:ui1_educational_app/Screens/Tutor/tutor_details.dart';

class TutorBody extends StatefulWidget {
  const TutorBody({Key? key}) : super(key: key);

  @override
  State<TutorBody> createState() => _TutorBodyState();
}

class _TutorBodyState extends State<TutorBody> {
  List<Map> tutorData = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height) / 5),
      margin: EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width) / 18),
      child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tutoring',
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.height) / 25,
                        color: Colors.white),
                  )), //35
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find tutoring from the best provider',
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.height) / 45,
                        color: Colors.white),
                  )), //18
              SizedBox(
                height: MediaQuery.of(context).size.height / 75 + 50,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  width: 220,
                  child: TabBar(labelColor: Colors.black38,
                      // indicatorColor: Colors.amber,

                      tabs: [
                        Tab(
                            child: Row(children: const [
                          Icon(Icons.video_call),
                          Text('Online', style: TextStyle(fontSize: 12))
                        ])),
                        Tab(
                            child: Row(children: const [
                          Icon(Icons.person),
                          Text('In Person', style: TextStyle(fontSize: 12))
                        ]))
                      ]),
                ),
                const Icon(
                  Icons.filter_alt_rounded,
                  color: Colors.grey,
                )
              ]),
              Expanded(
                  child: TabBarView(
                children: [
// online list------------------------------------------------------------------
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return listTile();
                      }),
// in person list-----------------------------------------------------------------------------
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return listTile();
                      })
                ],
              ))
            ],
          )),
    );
  }



// -------------------------------------------------------------------------------------------------
  Widget listTile(
      {String img = 'lib/images/milkyway1.jpg',
      String name = 'Name',
      IconData icon = Icons.percent,
      String details =
          'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
      String grade = '1 - 13'}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TutorDetails()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: CircleAvatar(radius: 35, backgroundImage: AssetImage(img)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Icon(icon)
                      ]),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    const Icon(Icons.check_circle_outline),
                    const SizedBox(width: 5),
                    SizedBox(width: 250, child: Expanded(child: Text(details)))
                  ]),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Class $grade',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
