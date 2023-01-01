import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/audio_state.dart';
import '../notifiers/audio_state_notifier.dart';

final audioStateProvider =
    StateNotifierProvider<AudioStateNotifier, AudioState>(
        (_) => AudioStateNotifier());
