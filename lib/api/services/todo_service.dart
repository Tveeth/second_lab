import 'package:chopper/chopper.dart';
import 'package:first_app/resources/app_constants.dart';

part 'todo_service.chopper.dart';

@ChopperApi(baseUrl: AppConstants.todoUrl)
abstract class TodoService extends ChopperService {
  static TodoService create([ChopperClient client]) => _$TodoService(client);

  @Get()
  Future<Response> getAllTodos();

  @Get(path: '/{id}')
  Future<Response> getTodoById(@Path() int id);
}