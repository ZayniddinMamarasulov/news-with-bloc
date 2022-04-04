import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void oshirish() => emit(state + 1);

  void kamaytirish() => emit(state - 1);
}
