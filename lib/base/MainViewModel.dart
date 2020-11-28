import 'package:flutter_viewmodel/base/vm/ViewModel.dart';

class MainViewModel extends ViewModel{

 @override
  void onCleared() {
    print("onCleared");
  }
}