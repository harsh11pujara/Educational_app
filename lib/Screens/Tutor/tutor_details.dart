import 'package:flutter/material.dart';

tutorDetails(BuildContext context, Function changePageFun, List<Map> data,int index) {
  double screenWidth = MediaQuery.of(context).size.width;  //360
  double screenHeight = MediaQuery.of(context).size.height;  //712

  return Container(
    // margin: const EdgeInsets.only(bottom: 30),
    padding: EdgeInsets.fromLTRB(screenWidth/18, 10, screenWidth/18, 0),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,

    decoration: const BoxDecoration(color: Color(0xffFAF8E9)),
    child: Stack(children: [
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                changePageFun(0);
              },
              child: Container(
                padding: EdgeInsets.all(screenHeight/50),
                child: const Icon(
                  Icons.close,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight/40,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(data[index]['img']),
                      radius: 50,
                    )),
              ],
            ),
            Text(
              data[index]['name'],
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.check_circle_outline),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      data[index]['description'],
                  style: const TextStyle(color: Colors.grey),
                )),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth/14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(data[index]['icon']),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data[index]['subject'])
                    ],
                  ),
                  Container(
                    height: 60,
                    width: screenWidth/4,
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            vertical: BorderSide.lerp(
                                const BorderSide(width: 1, color: Colors.grey),
                                const BorderSide(width: 1, color: Colors.grey),
                                1))),
                    child: Center(child: Text(data[index]['teaching type'])),
                  ),
                  Column(
                    children: [
                      Text(data[index]['grade']),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data[index]['subject'])
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text( data[index]['longDesc'],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      Positioned(
        left: screenWidth/18,
        bottom: 15,
        child: Container(
          height: 40,
          width: screenWidth/1.3,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(blurRadius: 6, spreadRadius: 2, color: Colors.grey)
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Contact Tutor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: screenWidth/40,
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            )
          ]),
        ),
      )
    ]),
  );
}
