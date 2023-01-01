import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

import 'audio_data.dart';

@immutable
class AudioState extends Equatable {
  final Set<AudioDataClass> audioDataList;

  const AudioState({required this.audioDataList});

  AudioState.unknown() : audioDataList = <AudioDataClass>{};

  AudioState copiedWithNewAudio(AudioDataClass audioDataClass) =>
      AudioState(audioDataList: audioDataList..add(audioDataClass));

  AudioDataClass fromName({required String name}) {
    return audioDataList.firstWhere((a) => a.audioData.name == name);
  }

  bool isAudioDataPresent(String name) {
    return audioDataList
        .any((audioDataClass) => audioDataClass.audioData.name == name);
  }

  double getAudioDataClassVolume(String name) {
    final AudioDataClass audioDataClass = fromName(name: name);
    return audioDataClass.volume;
  }

  @override
  List<Object> get props => [audioDataList];

  @override
  String toString() {
    return 'AudioState{audioDataList: ${audioDataList.map((a) => a.toString()).join(', ')}}';
  }
}

@immutable
class AudioDataClass extends Equatable {
  final AudioData audioData;
  final double volume;

  const AudioDataClass({required this.audioData, this.volume = 0.0});

  AudioDataClass.fromName({required String name, double? volume})
      : this(
          audioData: AudioData.values.firstWhere((a) => a.name == name),
          volume: volume ?? 0.5,
        );

  @override
  List<Object?> get props => [audioData];

  @override
  String toString() {
    return 'AudioDataClass{name: ${audioData.name}, icon: ${audioData.icon}, category: ${audioData.category}, audio: ${audioData.audio}, volume: $volume}';
  }
}
