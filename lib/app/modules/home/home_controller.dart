import 'package:covid19/app/data/model/model.dart';
import 'package:covid19/app/data/repositories/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

final MyRepository repository;
HomeController(this.repository);

  final _obj = <Data>[].obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  Future getAll() async {
    await repository.getAll().then((data) {
      obj = data;
    });
  }

}