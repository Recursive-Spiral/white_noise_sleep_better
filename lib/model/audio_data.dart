import 'audio_category.dart';

/*
Category                 | Audio Options                                                                           
-------------------------|-------------------------------------------------------------------------------------------
AudioCategory.city       | Airplane, Car, Fan, Keyboard, Rails, Restaurant, Subway, Traffic, Washing Machine        
AudioCategory.forest     | Birds, Creek, Fire, Forest, Frogs, Grasshoppers, Leaves, Waterfall, Wind                  
AudioCategory.meditation | Bells, Bowl, Brown Noise, Flute, Piano, Pink Noise, Stones, White Noise, Wind Chimes 
AudioCategory.rain       | Light, Normal, Ocean, On Leaves, On Roof, On Window, Thunders, Under Umbrella, Water     
*/

enum AudioData {
  airplane(
    name: 'Airplane',
    icon: 'assets/icons/city/ic_airplane_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/airplane.mp3',
  ),

  car(
    name: 'Car',
    icon: 'assets/icons/city/ic_car_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/car.mp3',
  ),

  fan(
    name: 'Fan',
    icon: 'assets/icons/city/ic_fan_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/fan.mp3',
  ),

  keyboard(
    name: 'Keyboard',
    icon: 'assets/icons/city/ic_keyboard_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/keyboard.mp3',
  ),

  rails(
    name: 'Rails',
    icon: 'assets/icons/city/ic_rails_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/rails.mp3',
  ),

  restaurant(
    name: 'Restaurant',
    icon: 'assets/icons/city/ic_restaurant_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/restaurant.mp3',
  ),

  subway(
    name: 'Subway',
    icon: 'assets/icons/city/ic_subway_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/subway.mp3',
  ),

  traffic(
    name: 'Traffic',
    icon: 'assets/icons/city/ic_traffic_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/traffic.mp3',
  ),

  washingMachine(
    name: 'Washing Machine',
    icon: 'assets/icons/city/ic_washing_machine_normal.png',
    category: AudioCategory.city,
    audio: 'assets/audio/city/washing_machine.mp3',
  ),

  birds(
    name: 'Birds',
    icon: 'assets/icons/forest/ic_birds_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/birds.mp3',
  ),

  creek(
    name: 'Creek',
    icon: 'assets/icons/forest/ic_creek_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/creek.mp3',
  ),

  fire(
    name: 'Fire',
    icon: 'assets/icons/forest/ic_fire_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/fire.mp3',
  ),

  forest(
    name: 'Forest',
    icon: 'assets/icons/forest/ic_forest_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/forest.mp3',
  ),

  frogs(
    name: 'Frogs',
    icon: 'assets/icons/forest/ic_frogs_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/frogs.mp3',
  ),

  grasshoppers(
    name: 'Grasshoppers',
    icon: 'assets/icons/forest/ic_grasshoppers_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/grasshoppers.mp3',
  ),

  leaves(
    name: 'Leaves',
    icon: 'assets/icons/forest/ic_leaves_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/leaves.mp3',
  ),

  waterfall(
    name: 'Waterfall',
    icon: 'assets/icons/forest/ic_waterfall_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/waterfall.mp3',
  ),

  wind(
    name: 'Wind',
    icon: 'assets/icons/forest/ic_wind_normal.png',
    category: AudioCategory.forest,
    audio: 'assets/audio/forest/wind.mp3',
  ),

  bells(
    name: 'Bells',
    icon: 'assets/icons/meditation/ic_bells_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/bells.mp3',
  ),

  bowl(
    name: 'Bowl',
    icon: 'assets/icons/meditation/ic_bowl_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/bowl.mp3',
  ),

  brownNoise(
    name: 'Brown Noise',
    icon: 'assets/icons/meditation/ic_brown_noise_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/brown_noise.mp3',
  ),

  flute(
    name: 'Flute',
    icon: 'assets/icons/meditation/ic_flute_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/flute.mp3',
  ),

  piano(
    name: 'Piano',
    icon: 'assets/icons/meditation/ic_piano_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/piano.mp3',
  ),

  pinkNoise(
    name: 'Pink Noise',
    icon: 'assets/icons/meditation/ic_pink_noise_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/pink_noise.mp3',
  ),

  stones(
    name: 'Stones',
    icon: 'assets/icons/meditation/ic_stones_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/stones.mp3',
  ),

  whiteNoise(
    name: 'White Noise',
    icon: 'assets/icons/meditation/ic_white_noise_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/white_noise.mp3',
  ),

  windChimes(
    name: 'Wind Chimes',
    icon: 'assets/icons/meditation/ic_wind_chimes_normal.png',
    category: AudioCategory.meditation,
    audio: 'assets/audio/meditation/wind_chimes.mp3',
  ),

  light(
    name: 'Light',
    icon: 'assets/icons/rain/ic_light_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/light.mp3',
  ),

  ocean(
    name: 'Ocean',
    icon: 'assets/icons/rain/ic_ocean_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/ocean.mp3',
  ),

  onLeaves(
    name: 'On Leaves',
    icon: 'assets/icons/rain/ic_on_leaves_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/on_leaves.mp3',
  ),

  onRoof(
    name: 'On Roof',
    icon: 'assets/icons/rain/ic_on_roof_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/on_roof.mp3',
  ),

  onWindow(
    name: 'On Window',
    icon: 'assets/icons/rain/ic_on_window_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/on_window.mp3',
  ),

  rain(
    name: 'Rain',
    icon: 'assets/icons/rain/ic_rain_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/normal.mp3',
  ),

  thunders(
    name: 'Thunders',
    icon: 'assets/icons/rain/ic_thunders_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/thunders.mp3',
  ),

  underUmbrella(
    name: 'Under Umbrella',
    icon: 'assets/icons/rain/ic_under_umbrella_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/under_umbrella.mp3',
  ),

  water(
    name: 'Water',
    icon: 'assets/icons/rain/ic_water_normal.png',
    category: AudioCategory.rain,
    audio: 'assets/audio/rain/water.mp3',
  );

  final String name;
  final String icon;
  final AudioCategory category;
  final String audio;
  const AudioData({
    required this.name,
    required this.icon,
    required this.category,
    required this.audio,
  });
}
