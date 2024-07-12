import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/products_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  const factory HomeState.success(List<ProductData> products) = Success<T>;
  const factory HomeState.error(String error) = Error;
}
