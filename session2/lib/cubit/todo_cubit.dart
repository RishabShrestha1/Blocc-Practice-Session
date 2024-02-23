import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session2/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  //this<> are the states and its type
  TodoCubit() : super([]);
  void addTodo(String title) {
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );
    // state.add(todo); dont use this  since we need to modify only through emit
    emit([...state, todo]);
  }
}
