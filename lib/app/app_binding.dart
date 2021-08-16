import 'package:covid19/app/data/provider/api.dart';
import 'package:covid19/app/data/repositories/repository.dart';
import 'package:covid19/app/modules/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class AppBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
     MyRepository(MyApiClient(httpClient: Get.find()))));
     Get.lazyPut(()=>Client());
  }
}