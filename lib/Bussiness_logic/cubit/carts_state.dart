part of 'carts_cubit.dart';

@immutable
sealed class CartsState {
}

final class CartsInitial extends CartsState {}
final class CartsLoading extends CartsState {}
final class CartsLoaded extends CartsState {
  final List<dynamic> cartsList;
  CartsLoaded(this.cartsList);

}
final class CartsSearch extends CartsState {
  final OrderElement orderElement;
  CartsSearch(this.orderElement);
}
final class CartsError extends CartsState {}