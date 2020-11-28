import 'package:flutter/material.dart';
import 'package:flutter_viewmodel/base/MainViewModel.dart';

import 'base/vm/ViewModelProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ViewModelProvider<MainViewModel,MyHomePage> {


  @override
  Widget buildBody(BuildContext context) {
    print("$viewModel");
    return Center(
        child: Text("12321")
    );
  }

  @override
  MainViewModel createViewModel() => MainViewModel();


}
