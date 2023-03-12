import 'package:stacked/stacked.dart';
import 'package:stacked_class01/app/app.router.dart';
import 'package:stacked_class01/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  // NavigationService navigationService = NavigationService();
  final _navigationservice = locator<NavigationService>();
  final counterservice = locator<CounterService>();

  addvalue() {
    counterservice.incrementvalue();
    rebuildUi();
  }

  navigatetohome() {
    _navigationservice.navigateToHomeView();
  }
}
