import 'package:flutter_viewmodel/base/vm/ViewModel.dart';

class ViewModelStore {
  Map<String, ViewModel> _map = Map();

  void put<T extends ViewModel>(String key,  T viewModel) {
    _map[key] = viewModel;
  }

  T get<T extends ViewModel>(String key) {
    return _map[key];
  }


  void clear() {
    for (ViewModel vm in _map.values) {
      vm.onCleared();
    }
    _map.clear();
  }
}
