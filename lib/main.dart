import 'package:flutter/material.dart';
import 'package:flutter_viewmodel/base/MainViewModel.dart';

import 'base/vm/ViewModelProvider.dart';
import 'main2.dart';

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
      home: Scaffold(
        body: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ViewModelProvider<MainViewModel, MyHomePage> {
  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(child: Text("123"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ;
            }));
          },
        ),
        MyHomePage2(this)
      ],
    );
  }

  @override
  MainViewModel createViewModel() => MainViewModel();
}



