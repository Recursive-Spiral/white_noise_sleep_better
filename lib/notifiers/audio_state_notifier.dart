import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/audio_state.dart';

class AudioStateNotifier extends StateNotifier<AudioState> {
  AudioStateNotifier() : super(AudioState.unknown()) {
    // TODO: Get from Hive
  }

  // void toggleAudio({required AudioDataClass audioDataClass}) {
  //   if (state.audioDataList.contains(audioDataClass)) {
  //     state = AudioState(
  //       audioDataList: state.audioDataList..remove(audioDataClass),
  //     );
  //   } else {
  //     state = AudioState(
  //       audioDataList: state.audioDataList..add(audioDataClass),
  //     );
  //   }
  // }

  void toggleAudio({required String name}) {
    final AudioDataClass audioDataClass = AudioDataClass.fromName(name: name);
    if (state.audioDataList.contains(audioDataClass)) {
      state = AudioState(
        audioDataList: state.audioDataList..remove(audioDataClass),
      );
    } else {
      state = AudioState(
        audioDataList: state.audioDataList..add(audioDataClass),
      );
    }
  }

  void changeVolume({required String name, required double volume}) {
    final AudioDataClass oldData = state.fromName(name: name);
    final AudioDataClass newData =
        AudioDataClass.fromName(name: name, volume: volume);

    state = AudioState(
        audioDataList: state.audioDataList
          ..remove(oldData)
          ..add(newData));
  }
}
