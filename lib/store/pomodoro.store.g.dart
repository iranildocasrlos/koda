// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$tempoAtividadeAtom = Atom(
    name: '_PomodoroStore.tempoAtividade',
    context: context,
  );

  @override
  int get tempoAtividade {
    _$tempoAtividadeAtom.reportRead();
    return super.tempoAtividade;
  }

  @override
  set tempoAtividade(int value) {
    _$tempoAtividadeAtom.reportWrite(value, super.tempoAtividade, () {
      super.tempoAtividade = value;
    });
  }

  late final _$tempoDescansoAtom = Atom(
    name: '_PomodoroStore.tempoDescanso',
    context: context,
  );

  @override
  int get tempoDescanso {
    _$tempoDescansoAtom.reportRead();
    return super.tempoDescanso;
  }

  @override
  set tempoDescanso(int value) {
    _$tempoDescansoAtom.reportWrite(value, super.tempoDescanso, () {
      super.tempoDescanso = value;
    });
  }

  late final _$_PomodoroStoreActionController = ActionController(
    name: '_PomodoroStore',
    context: context,
  );

  @override
  void incrementarTempoAtividade() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
      name: '_PomodoroStore.incrementarTempoAtividade',
    );
    try {
      return super.incrementarTempoAtividade();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoAtividade() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
      name: '_PomodoroStore.decrementarTempoAtividade',
    );
    try {
      return super.decrementarTempoAtividade();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoDescanso() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
      name: '_PomodoroStore.incrementarTempoDescanso',
    );
    try {
      return super.incrementarTempoDescanso();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoDescanso() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
      name: '_PomodoroStore.decrementarTempoDescanso',
    );
    try {
      return super.decrementarTempoDescanso();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tempoAtividade: ${tempoAtividade},
tempoDescanso: ${tempoDescanso}
    ''';
  }
}
