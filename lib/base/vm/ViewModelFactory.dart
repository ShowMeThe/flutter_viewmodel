

import 'package:flutter_viewmodel/base/vm/ViewModelStore.dart';

class ViewModelFactory{

  ViewModelFactory._privateConstructor();

  static final ViewModelFactory _instance = ViewModelFactory._privateConstructor();

  static ViewModelFactory get instance { return _instance;}


  Map<String,ViewModelStore> _map = Map();




}