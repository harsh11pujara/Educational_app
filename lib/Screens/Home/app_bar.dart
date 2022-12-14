import 'package:flutter/material.dart';

AppBar myAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: MediaQuery
        .of(context)
        .size
        .height / 8,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration:
            const BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                  color: Colors.white, blurRadius: 4, spreadRadius: 0),
            ]),
            child: CircleAvatar(
                radius: MediaQuery
                    .of(context)
                    .size
                    .height / 30,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person))),
          ))
    ],
  );
}
