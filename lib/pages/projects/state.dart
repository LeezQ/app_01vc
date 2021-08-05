import 'package:get/get.dart';

class ProjectsState {
  // title
  final _title = "name".obs;
  set title(value) => this._title.value = value;
  get title => this._title.value;
}
