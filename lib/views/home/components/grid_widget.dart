import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/audio_data.dart';
import '../../../providers/audio_provider.dart';
import '../../../providers/is_toggled_provider.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.audioDataList,
  }) : super(key: key);

  final List<AudioData> audioDataList;

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, child) {
        return Flexible(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(40.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 40.0,
              crossAxisSpacing: 40.0,
            ),
            itemCount: audioDataList.length,
            itemBuilder: (context, index) {
              AudioData audioData = audioDataList[index];
              final isToggled = ref.watch(isToggledProvider(audioData.name));
              return IconButton(
                onPressed: () {
                  ref
                      .watch(audioStateProvider.notifier)
                      .toggleAudio(name: audioData.name);
                },
                icon: Image.asset(
                  audioData.icon,
                  color: isToggled ? Colors.red.shade400 : Colors.grey,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
