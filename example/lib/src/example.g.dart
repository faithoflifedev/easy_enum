// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// BetterEnumGenerator
// **************************************************************************

extension VideoStateExt on VideoState {
  String get value => ['play', 'paused', 'stopped'][index];
}

extension VideoStateTxe on String {
  VideoState? get videoState => {
        'play': VideoState.play,
        'paused': VideoState.paused,
        'stopped': VideoState.stopped,
      }[this];
}

extension VideoRatingExt on VideoRating {
  String get theValue => ['none', 'dislike', 'like'][index];
}

extension VideoRatingTxe on String {
  VideoRating? get theRating => {
        'none': VideoRating.none,
        'dislike': VideoRating.dislike,
        'like': VideoRating.like,
      }[this];
}
