import 'package:stacked/stacked.dart';
import 'package:stacked_class01/app/app.locator.dart';
import 'package:stacked_class01/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final counterservice = locator<CounterService>();
  // int counter = 0;

  // addcountervalue() {
  //   counter++;
  //   rebuildUi();
  // }

  // resetcountervalue() {
  //   counter = 0;
  //   rebuildUi();
  // }

  // subtractcountervalue() {
  //   if (counter > 0) {
  //     counter--;
  //     rebuildUi();
  //   }
  // }
}
