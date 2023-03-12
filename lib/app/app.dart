import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_class01/services/counter_service.dart';
import 'package:stacked_class01/views/home_view.dart';
import 'package:stacked_class01/views/login_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView, initial: true)
  ],
  dependencies:[ 
  Singleton(
    classType: NavigationService,
  ),
  LazySingleton(
    classType: CounterService
  )]
)

class App{}