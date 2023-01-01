import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/audio_data.dart';
import '../../providers/audio_provider.dart';
import '../../providers/is_toggled_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('White Noise: Sleep Better'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemCount: AudioData.values.length,
        itemBuilder: (context, index) {
          AudioData audioData = AudioData.values[index];
          final isToggled = ref.watch(isToggledProvider(audioData.name));
          return IconButton(
            onPressed: () {
              ref
                  .watch(audioStateProvider.notifier)
                  .toggleAudio(name: audioData.name);
            },
            icon: Image.asset(
              audioData.icon,
              color: isToggled ? Colors.black : Colors.red,
            ),
          );
        },
      ),
    );
  }
}
