import 'package:demo/app/logging/logger_provider.dart';
import 'package:demo/generated/l10n.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => S.current.HomeViewCounter(counter);
  Logger _logger;
  HomeViewModel() {
    this._logger =
        LoggerProvider.getLogger(_title ?? this.runtimeType.toString());
  }

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _logger.i('counter will be added');
    _counter++;
    notifyListeners();
  }
}
