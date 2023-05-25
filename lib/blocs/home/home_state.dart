part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(LoadingStatus.initial) LoadingStatus status,
    @Default([]) List<Product> allProducts,
    @Default([]) List<Product> hotProducts,
  }) = _HomeState;
}
