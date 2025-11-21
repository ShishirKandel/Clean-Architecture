import 'package:clean_architecture/core/states/async_value.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  // Convenient boolean getters
  bool get isLoading => this is AsyncLoading<T>;
  bool get isData => this is AsyncData<T>;
  bool get isError => this is AsyncError<T>;
  bool get isInitial => this is AsyncInitial<T>;
  
  // Get data or null without casting
  T? get dataOrNull => maybeWhen(
    data: (value) => value,
    orElse: () => null,
  );
  
  // Get error message or null
  String? get errorOrNull => maybeWhen(
    error: (msg, _) => msg,
    orElse: () => null,
  );
}