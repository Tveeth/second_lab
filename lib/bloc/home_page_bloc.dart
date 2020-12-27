import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:first_app/api/api_client.dart';
import 'package:first_app/api/api_client.dart';
import 'package:first_app/api/api_error.dart';
import 'package:first_app/api/model/todo_model.dart';
import 'package:first_app/bloc/states.dart';

class HomePageBloc extends BlocBase {
  final ApiClient apiClient;

  HomePageBloc(this.apiClient);

  final _todoController = StreamController<AppState<List<TodoModel>>>()
    ..add(InitialState());

  Stream<AppState<List<TodoModel>>> get  todoStream => _todoController.stream;

  @override
  void dispose() {
    _todoController.close();
    super.dispose();
  }

  void makeTodoCall() async {
    _makeCallForController(
      _todoController,
          () => apiClient.getTodos(),
    );
  }

  // TODO: Think about the improvement
  void _makeCallForController<T>(
      StreamController<AppState<T>> controller,
      Future<T> Function() call,
      ) async {
    controller.add(LoadingState());
    try {
      T data = await call();
      controller.add(SuccessState(data));
    } on ApiError catch (ex) {
      controller.add(ErrorState(ex.message));
    }
  }
}