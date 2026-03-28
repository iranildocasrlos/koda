import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int tempoAtividade = 2;

  @observable
  int tempoDescanso = 1;

  @action
  void incrementarTempoAtividade() {
    tempoAtividade++;
  }

  @action
  void decrementarTempoAtividade() {
    if (tempoAtividade > 1) {
      tempoAtividade--;
    }
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  void decrementarTempoDescanso() {
    if (tempoDescanso > 1) {
      tempoDescanso--;
    }
  }
}
