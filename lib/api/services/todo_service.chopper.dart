// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$TodoService extends TodoService {
  _$TodoService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = TodoService;

  Future<Response> getAllTodos() {
    final $url = '/todos';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getTodoById(int id) {
    final $url = '/todos/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}