import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/home_viewmodel.dart';
import '../viewmodels/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  viewModel.addvalue();
                },
                child: Icon(Icons.add),
              ),
              appBar: AppBar(
                title: Text("Counter Application"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      viewModel.counterservice.counter.toString(),
                      style: TextStyle(
                        fontSize: 55,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewModel.navigatetohome();
                        },
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // viewModel.subtractcountervalue();
                        },
                        child: Text(
                          "---",
                          style: TextStyle(fontSize: 30),
                        ))
                  ],
                ),
              ),
            ));
  }
}
