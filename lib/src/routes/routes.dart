
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laboratorioleccion7/src/pages/bottom_nav_bar_page.dart';
import 'package:laboratorioleccion7/src/pages/data_tables_page.dart';
import 'package:laboratorioleccion7/src/pages/drawers_page.dart';
import 'package:laboratorioleccion7/src/pages/home_page.dart';
import 'package:laboratorioleccion7/src/pages/listviews_listtiles_page.dart';
import 'package:laboratorioleccion7/src/pages/selectable_text_page.dart';
import 'package:laboratorioleccion7/src/pages/stacks_page.dart';
import 'package:laboratorioleccion7/src/pages/tab_bars_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => HomePage(),
    '/bottomNav': (context) => BottomNavBarPage(),
    '/tabs': (context) => TabBarsPage(),
    '/drawers' : (context) => DrawersPage(),
    '/listview' : (context) => ListViewsListTilesPage(),
    '/dataTable' : (context) => DataTablesPage(),
    '/selectableText': (context) => SelectableTextPage(),
    '/stacks': (context) => StacksPage()
  };
}