import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_value.freezed.dart';

@freezed
class AsyncValue<T> with _$AsyncValue<T>{
  const factory AsyncValue.initial() = AsyncInitial;
  const factory AsyncValue.loading() = AsyncLoading;
  const factory AsyncValue.data(T value) = AsyncData<T>;
  const factory AsyncValue.error(String msg, [StackTrace? stacktrace]) = AsyncError;
}
