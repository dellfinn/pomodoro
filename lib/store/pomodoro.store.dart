import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  void decrementrarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  void incrementarTempoDesncaso() {
    tempoDescanso++;
  }

  @action
  void decrementrarTempoDescanso() {
    tempoDescanso--;
  }
}
