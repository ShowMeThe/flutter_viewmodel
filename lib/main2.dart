



import 'package:flutter/material.dart';
import 'package:flutter_viewmodel/base/vm/ViewModel.dart';
import 'package:flutter_viewmodel/base/vm/ViewModelChildProvider.dart';

import 'base/MainViewModel.dart';
import 'base/vm/ViewModelProvider.dart';


class MyHomePage2 extends StatefulWidget {

  MyHomePage2(this.provider,{Key key}) : super(key: key);

  final ViewModelProvider<ViewModel, StatefulWidget> provider;

  @override
  _MyHomePageState2 createState() => _MyHomePageState2(provider);
}

class _MyHomePageState2 extends ViewModelChildProvider<MainViewModel,MyHomePage2> {

  _MyHomePageState2(ViewModelProvider<ViewModel, StatefulWidget> provider) : super(provider);


  @override
  Widget buildBody(BuildContext context) {
    return Center(
        child: ElevatedButton(child: Text("123"),onPressed: (){

        },)
    );
  }

  @override
  MainViewModel createViewModel() => MainViewModel();


}
