import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:first_app/api/model/todo_model.dart';
import 'package:first_app/bloc/home_page_bloc.dart';
import 'package:first_app/bloc/states.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/todo_view.dart';

class TodosHomePage extends StatefulWidget {
  @override
  _TodosHomePageState createState() => _TodosHomePageState();
}

class _TodosHomePageState extends State<TodosHomePage> {
  final _bloc = BlocProvider.getBloc<HomePageBloc>();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API realisation"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: StreamBuilder<AppState<List<TodoModel>>>(
        stream: _bloc.todoStream,
        builder: _buildResponse,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: _bloc.makeTodoCall,
      ),
    );
  }

  Widget _buildResponse(
      BuildContext context,
      AsyncSnapshot<AppState<List<TodoModel>>> snapshot,
      ) {
    if (!snapshot.hasData) {
      return Center(
        child: Text(AppStrings.noData),
      );
    }

    final todos = snapshot.data;

    if (todos is InitialState) {
      return Center(
        child: Text(AppStrings.initialTodoStateLabel),
      );
    }

    if (todos is LoadingState) {
      return _buildLoader();
    }

    if (todos is SuccessState) {
      return _buildTodos((todos as SuccessState).data);
    }

    if (todos is ErrorState) {
      return _buildError((todos as ErrorState).errorMessage);
    }

    return _buildLoader();
  }

  Widget _buildLoader() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildTodos(List<TodoModel> todos) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: todos.length,
      itemBuilder: (_, index) => TodoView(todoModel: todos[index]),
    );
  }

  Widget _buildError(String errorMessage) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Text(
          errorMessage,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}