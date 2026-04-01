import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
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

  Timer? cronometro;
  final AudioPlayer _audioPlayer = AudioPlayer();

  void _tocarSom(TipoIntervalo tipo) {
    if (tipo == TipoIntervalo.ATIVIDADE) {
      _audioPlayer.play(AssetSource('audio/atividade.wav'));
    } else {
      _audioPlayer.play(AssetSource('audio/descanso.wav'));
    }
  }

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (segundos == 0 && minutos == 0) {
        _trocarTipoIntervalo();
      } else if (segundos == 0) {
        minutos--;
        segundos = 59;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    parar();
    minutos = estaEmAtividade ? tempoAtividade : tempoDescanso;
    segundos = 0;
  }

  @action
  void incrementarTempoAtividade() {
    tempoAtividade++;
    if (estaEmAtividade) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoAtividade() {
    if (tempoAtividade > 1) {
      tempoAtividade--;
    }
    if (estaEmAtividade) {
      reiniciar();
    }
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
    if (estaEmDescanso) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoDescanso() {
    if (tempoDescanso > 1) {
      tempoDescanso--;
    }

    if (estaEmDescanso) {
      reiniciar();
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
      _tocarSom(TipoIntervalo.DESCANSO);
    } else {
      tipoIntervalo = TipoIntervalo.ATIVIDADE;
      minutos = tempoAtividade;
      _tocarSom(TipoIntervalo.ATIVIDADE);
    }
    segundos = 0;
  }
}
