import 'package:flutter/material.dart';

int tabIndex = 0;

Widget showAllTutor(BuildContext context, Function changePageFun, Function refresh, List<Map> data){
  return Container(
    padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height) / 5),
    margin: EdgeInsets.symmetric(
        horizontal: (MediaQuery.of(context).size.width) / 18),
    child: DefaultTabController(
      initialIndex: tabIndex,
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
                    onTap: (int index){
                      tabIndex = index;
                      refresh();
                    },
                    tabs: [
                      Tab(

                          child: Row(children: [
                            Icon(Icons.video_call, color: tabIndex == 0? Colors.blue : Colors.grey,),
                            Text('Online', style: TextStyle(fontSize: 12, color: tabIndex == 0? Colors.blue : Colors.grey,))
                          ])),
                      Tab(
                          child: Row(children: [
                            Icon(Icons.person, color: tabIndex == 1? Colors.blue : Colors.grey,),
                            Text('In Person', style: TextStyle(fontSize: 12,color: tabIndex == 1? Colors.blue : Colors.grey,))
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
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          // changeTabIndex(0);
                          // refresh(0);
                          return listTile(context, changePageFun, data[index], index);
                        }),
// in person list-----------------------------------------------------------------------------
                    ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          // changeTabIndex(1);
                          // refresh(1);
                          return listTile(context, changePageFun, data[index], index);
                        })
                  ],
                ))
          ],
        )),
  );
}



// -------------------------------------------------------------------------------------------------
Widget listTile(
    BuildContext context,
        Function changePageFun,
    Map data,
    int index,
    ) {
  return GestureDetector(
    onTap: (){
      changePageFun(index);
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
            child: CircleAvatar(radius: 35, backgroundImage: AssetImage(data['img'])),
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
                        data['name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      Icon(data['icon'])
                    ]),
                const SizedBox(
                  height: 12,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Icon(Icons.check_circle_outline),
                  const SizedBox(width: 5),
                  SizedBox(width: 250, child: Text(data['description']))
                ]),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Class  '+data["grade"],
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

changeTabIndex(int index){
  tabIndex = index;
}