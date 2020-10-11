import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Container(
          color: Colors.white,
          child: FlutterLogo(size: MediaQuery.of(context).size.height)),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
