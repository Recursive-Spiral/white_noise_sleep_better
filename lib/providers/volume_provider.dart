import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'audio_provider.dart';

final volumeProvider = Provider.family.autoDispose<double, String>(
  (ref, String name) {
    final audioState = ref.watch(audioStateProvider);
    bool isAudioDataPresent = audioState.isAudioDataPresent(name);
    if (isAudioDataPresent) {
      return audioState.getAudioDataClassVolume(name);
    }
    return 0.0;
  },
);
