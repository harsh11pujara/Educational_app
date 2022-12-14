import 'package:flutter/material.dart';

class TutorDetails extends StatelessWidget {
  const TutorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,{String img = 'lib/images/milkyway1.jpg',
    String name = 'Name',
    IconData icon = Icons.percent,
    String details =
    'Sometimes you may want to display a border around your circular image/CircleAvatar Sometimes you may',
    String grade = '1 - 13'}) {
    return Container(
      // height: MediaQuery.of(context).size.height-300,
      // width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xffFAF8E9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close)),
          Row(
            children: [
              Expanded(child: Container()),
              Container(padding: const EdgeInsets.all(15),child: const CircleAvatar(backgroundImage: AssetImage('lib/images/milkyway1.jpg'),radius: 30,)),
            ],
          ),
          Text(name,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.check_circle_outline),
              const SizedBox(width: 10,),
              Text(details)
            ],
          ),
          const SizedBox(height: 100,),
          Row(
            children: [
              Column()
            ],
          )


        ],
      ),
    );
  }
}
