import 'package:flutter/material.dart';

AppBar tutorAppBar(){
  return AppBar(
    bottom: const TabBar(
      tabs: [
        Tab(icon: Icon(Icons.video_call),text: 'Online',),
        Tab(icon: Icon(Icons.person),text: 'In Person',)
      ],
    ),
  );
}