part of 'search_cart_cubit.dart';

@immutable
sealed class SearchCartState {}

final class SearchCartInitial extends SearchCartState {}
final class SearchCartError extends SearchCartState {}
final class SearchCartLoading extends SearchCartState {}
final class SearchCartLoaded extends SearchCartState {
  final OrderElement orderElement;
  SearchCartLoaded(this.orderElement);
}
