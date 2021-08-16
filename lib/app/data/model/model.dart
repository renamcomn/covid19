class MyModel {
  List<Data> data;

  MyModel({ required this.data});
}

class Data {
  late int uid;
  late String uf;
  late String state;
  late int cases;
  late int deaths;
  late int suspects;
  late int refuses;
  late String datetime;

  Data(
      {required this.uid,
      required this.uf,
      required this.state,
      required this.cases,
      required this.deaths,
      required this.suspects,
      required this.refuses,
      required this.datetime});

  Data.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    uf = json['uf'];
    state = json['state'];
    cases = json['cases'];
    deaths = json['deaths'];
    suspects = json['suspects'];
    refuses = json['refuses'];
    datetime = json['datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['uf'] = this.uf;
    data['state'] = this.state;
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['suspects'] = this.suspects;
    data['refuses'] = this.refuses;
    data['datetime'] = this.datetime;
    return data;
  }
}