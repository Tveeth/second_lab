import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:chopper/src/response.dart';

import 'package:first_app/api/api_error.dart';
import 'package:first_app/api/model/todo_model.dart';
import 'package:first_app/api/services/todo_service.dart';
import 'package:first_app/resources/app_constants.dart';
import 'package:first_app/resources/app_strings.dart';

import 'model/todo_model.dart';

class ApiClient {
  static final ChopperClient _chopperClient = ChopperClient(
    baseUrl: AppConstants.fakeApiBaseUrl,
    services: [
      TodoService.create(),
    ],
    converter: JsonConverter(),
  );

  static final todoService = _chopperClient.getService<TodoService>();

  Future<List<TodoModel>> getTodos() async {
    final rawTodos = (await _makeCheckedCall(() => todoService.getAllTodos()))
        .body as List<dynamic>;
    final todos =
    rawTodos.map((rawTodo) => TodoModel.fromJson(rawTodo)).toList();

    return todos;
  }

  Future<Response> _makeCheckedCall(Future<Response> Function() call) async {
    try {
      final response = await call();

      if (response.statusCode >= 400) {
        throw ApiError(
          statusCode: response.statusCode,
          message:response.statusCode.toString(),//.error.toString(),// "error",
        );
      }

      return response;
    } on ApiError catch (ex) {
      throw ex;
    } on SocketException {
      throw ApiError(message: AppStrings.internetConnectionError);
    } catch (ex) {
      throw ApiError(message: AppStrings.generalErrorMessage);
    }
  }
}