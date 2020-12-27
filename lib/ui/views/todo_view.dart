import 'package:flutter/material.dart';
import 'package:first_app/api/model/todo_model.dart';

class TodoView extends StatelessWidget {
  final TodoModel todoModel;

  const TodoView({
    Key key,
    @required this.todoModel,
  }) : super(key: key);

  Color _getStatusColor(BuildContext context) {
    final theme = Theme.of(context);
    return todoModel.completed
        ? theme.primaryColor
        : theme.primaryColorLight;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getStatusColor(context),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          trailing: Text(
            todoModel.id.toString(),
            style: TextStyle(fontSize: 20.0),
          ),
          title: Text(todoModel.title),
          leading: _buildStatusIcon(todoModel.completed),
        ),
      ),
    );
  }

  Widget _buildStatusIcon(bool isCompleted) {
    return Icon(isCompleted ? Icons.check : Icons.info);
  }
}