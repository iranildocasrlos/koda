import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo { ATIVIDADE, DESCANSO }

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoAtividade = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.DESCANSO;

  @action
  void iniciar() {
    iniciado = true;
  }

  @action
  void parar() {
    iniciado = false;
  }

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

  bool get estaEmAtividade {
    return tipoIntervalo == TipoIntervalo.ATIVIDADE;
  }

  bool get estaEmDescanso {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }

  void _trocarTipoIntervalo() {
    if (tipoIntervalo == TipoIntervalo.ATIVIDADE) {
      tipoIntervalo = TipoIntervalo.DESCANSO;
      minutos = tempoDescanso;
    } else {
      tipoIntervalo = TipoIntervalo.ATIVIDADE;
      minutos = tempoAtividade;
    }
    segundos = 0;
  }
}
