import 'package:bloc_pattern/MatematikRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);

  var repo = MatematikRepository();
  void topla(String  sayi1, String sayi2) {
    emit(repo.topla(sayi1, sayi2));
  }
  void carp(String  sayi1, String sayi2) {
    emit(repo.carp(sayi1, sayi2));
  }
}