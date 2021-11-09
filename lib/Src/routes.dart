import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/creatorform.dart';
import 'package:massenger_mock_homepage/Src/homestuct.dart';
import 'package:massenger_mock_homepage/Src/inbox.dart';
import 'snippets.dart';

final Map<String,WidgetBuilder>routes={
  HomeStructure.routeName:(context)=>HomeStructure(),
  Inbox.routeName:(context)=> Inbox(),
  CreatorForm.routeName:(context)=>CreatorForm(),
};

List<ProInfo> profileInfos = [
ProInfo(status: "Active",name: "Mostafijul Islam", imgLink: "https://images.unsplash.com/photo-1603384699007-50799748fc45?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", text: "Welcome to my massenger app!", sound: "sound"),
];