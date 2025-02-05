import 'package:bloc/bloc.dart';
import 'package:todo_list_with_cubit/model/todo_model.dart';

class TodoCubit extends Cubit<List<TodoModel>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = TodoModel(title: title, createdAt: DateTime.now());

    state.add(todo);
    emit([...state]);
  }

  void deleteTodo(TodoModel todo) {
    state.remove(todo);
    emit([...state]);
  }
}
