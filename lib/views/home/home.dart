import 'package:flutter/material.dart';
import 'package:flutter_stacked/viewmodels/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (viewModel) => viewModel.initialise(),
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${viewModel.counter}"),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: Text('Add'))
                ],
              )),
            ));
  }
}
