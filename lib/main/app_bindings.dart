import 'package:cronos/main/app_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
