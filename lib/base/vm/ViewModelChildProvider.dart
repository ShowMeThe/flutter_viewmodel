
import 'package:flutter/material.dart';
import 'package:flutter_viewmodel/base/vm/ViewModelProvider.dart';
import 'ViewModel.dart';
import 'ViewModelFactory.dart';
import 'ViewModelStore.dart';

abstract class ViewModelChildProvider <S extends ViewModel, T extends StatefulWidget> extends State<T> {

  final ViewModelProvider provider;

  ViewModelChildProvider(this.provider);


  Widget buildBody(BuildContext context);

  S createViewModel();

  S viewModel;


  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    viewModel = ViewModelFactory.instance.create(provider,createViewModel());
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }


}