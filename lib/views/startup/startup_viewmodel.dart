import 'package:demo/app/router.gr.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'dart:async';

class StartupViewModel extends BaseViewModel {
  StartupViewModel() {
    Timer(Duration(seconds: 5), () => Get.toNamed(Routes.homeView));
  }
}
