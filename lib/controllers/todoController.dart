import 'package:get/get.dart';
import 'package:getx_example/controllers/authController.dart';
import 'package:getx_example/models/todo.dart';
import 'package:getx_example/services/database.dart';


class TodoController extends GetxController {
  Rx<List<TodoModel>> todoList = Rx<List<TodoModel>>();

  List<TodoModel> get todos => todoList.value;

  @override
  void onInit() {
    String uid = Get.find<AuthController>().user.uid;
    todoList
        .bindStream(Database().todoStream(uid)); //stream coming from firebase
  }
}