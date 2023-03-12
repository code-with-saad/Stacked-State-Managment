import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/home_viewmodel.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {},
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  // viewModel.addcountervalue();
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
                      "${viewModel.counterservice.counter}",
                      style: TextStyle(
                        fontSize: 55,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // viewModel.resetcountervalue();
                        },
                        child: Text(
                          "Reset",
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
