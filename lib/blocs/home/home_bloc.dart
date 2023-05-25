import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/repositories/home/home_repository.dart';
import 'package:shoppingcart/presentation/utilities/enums/loading_status.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc({
    required this.homeRepository,
  }) : super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        loading: (_) async => await _loading(emit),
      );
    });
  }

  Future<void> _loading(Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(status: LoadingStatus.inProgress));

      await Future.delayed(const Duration(seconds: 2));

      final allProducts = await homeRepository.getAllProducts();
      final hotProducts = await homeRepository.getHotProducts();

      emit(
        state.copyWith(
          status: LoadingStatus.success,
          allProducts: allProducts,
          hotProducts: hotProducts,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LoadingStatus.error));
    }
  }

  // _addToCart() {}
}
