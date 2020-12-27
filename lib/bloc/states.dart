abstract class AppState<T> {}

class InitialState<T> implements AppState<T> {}

class LoadingState<T> implements AppState<T> {
  final bool isLoading;

  const LoadingState({this.isLoading = true});
}

class SuccessState<T> implements AppState<T> {
  final T data;

  const SuccessState(this.data);

  const SuccessState.empty() : data = null;
}

class ErrorState<T> implements AppState<T> {
  final String errorMessage;

  const ErrorState(this.errorMessage);
}