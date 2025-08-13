import 'package:flutter/cupertino.dart';
import 'package:shipping_app/presentation/widgets/navigation/profile_widget.dart';
import '../presentation/widgets/navigation/history_widget.dart';
import '../presentation/widgets/navigation/home_widget.dart';
import '../presentation/widgets/navigation/track_widget.dart';

var searchValue ='';
int selectedIndex =0;
List<Widget> navigationList =[
  HomeWidget(),
  TrackWidget(),
  HistoryWidget(),
  ProfileWidget(),
];