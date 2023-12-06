import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'select_monster_image.g.dart';

@riverpod
class SelectMonsterImage extends _$SelectMonsterImage {
  @override
  String build({required int selectedPet}) {
    String imagePath;
    switch (selectedPet) {
      case 0:
        imagePath = 'assets/images/monster_a_1.png';
      case 1:
        imagePath = 'assets/images/monster_b_1.png';
      case 2:
        imagePath = 'assets/images/monster_c_1.png';
      default:
        imagePath = 'assets/images/test.png';
    }

    return imagePath;
  }
}
