import 'package:bloc/bloc.dart';
import '../../domain/entities/laptop_entites.dart';
import '../../domain/repositories/laptop_repository.dart';
import 'package:meta/meta.dart';

part 'lap_top_state.dart';

class LapTopCubit extends Cubit<LapTopState> {
  LapTopCubit(this.laptopRepository) : super(LapTopInitial());
  final LaptopRepository laptopRepository;
  void getLaptop() async {
    emit(LapTopLoading());
    var result = await laptopRepository.getAllLapTop();
    result.fold(
      (l) {
        emit(LapTopError(message: l.message));
        print(l.message);
      },
      (r) {
        emit(LapTopLoaded(lapTopList: r));
      },
    );
  }
}
