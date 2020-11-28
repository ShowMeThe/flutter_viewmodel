import 'package:flutter/cupertino.dart';
import 'ViewModel.dart';
import 'ViewModelStore.dart';
import 'ViewModelFactory.dart';

abstract class ViewModelProvider<S extends ViewModel, T extends StatefulWidget> extends State<T>{


  Widget buildBody(BuildContext context);

  S createViewModel();

  S viewModel;

  ViewModelStore _viewModelStore;

   ViewModelStore getViewModelStore(){
     if(_viewModelStore == null){
       _viewModelStore = ViewModelStore();
     }
     return _viewModelStore;
  }

  @override
  void dispose() {
    if(viewModel!=null){
      viewModel.onCleared();
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    viewModel = createViewModel();
    if(_viewModelStore == null){
      _viewModelStore = getViewModelStore();
    }
   _viewModelStore.put(S.toString(), viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

}