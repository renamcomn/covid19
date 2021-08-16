
import 'package:covid19/app/data/provider/api.dart';

class MyRepository {

final MyApiClient api;

MyRepository(this.api);

getAll(){
  return api.getAll();
}

}