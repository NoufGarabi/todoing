import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoing/screens/homepage.dart';
import 'models/taskdata.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(unselectedWidgetColor: const Color(0xFFEB06FF)),
        home: const HomePage(),
      ),
    ),
  );
}
