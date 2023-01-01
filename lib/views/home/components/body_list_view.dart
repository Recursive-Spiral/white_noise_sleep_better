import 'package:flutter/material.dart';

import '../../../model/audio_category.dart';
import '../../../model/audio_data.dart';
import 'grid_widget.dart';

class BodyListView extends StatelessWidget {
  const BodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: AudioCategory.values.length,
        itemBuilder: (context, index) {
          final category = AudioCategory.values[index];
          final List<AudioData> audioDataList =
              filterAudioDataByCategory(category);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  category.name[0].toUpperCase() + category.name.substring(1),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              GridWidget(audioDataList: audioDataList)
            ],
          );
        },
      ),
    );
  }

  List<AudioData> filterAudioDataByCategory(AudioCategory category) {
    return AudioData.values
        .where((audioData) => audioData.category == category)
        .toList();
  }
}
