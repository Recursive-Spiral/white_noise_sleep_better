import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'audio_provider.dart';

final isToggledProvider = Provider.family.autoDispose<bool, String>(
  (ref, String name) {
    final audioState = ref.watch(audioStateProvider);
    return audioState.isAudioDataPresent(name);
  },
);
