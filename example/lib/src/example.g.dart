// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// EasyEnumGenerator
// **************************************************************************

extension SimpleStateExt on SimpleState {
  String get value => ['play', 'paused', 'stopped'][index];
}

extension SimpleStateTxe on String {
  SimpleState? get simpleState => {
        'play': SimpleState.play,
        'paused': SimpleState.paused,
        'stopped': SimpleState.stopped,
      }[this];
}

extension SomeRatingExt on SomeRating {
  String get theValue => ['none', 'dislike', 'like'][index];
}

extension SomeRatingTxe on String {
  SomeRating? get theRating => {
        'none': SomeRating.none,
        'dislike': SomeRating.dislike,
        'like': SomeRating.like,
      }[this];
}
