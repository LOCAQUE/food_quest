enum Pet {
  caracter1,
  caracter2,
  caracter3,
}

String levelToGifUrlforCharacter1(int lvl) {
  if (lvl < 2) {
    return 'assets/gif/a1.gif';
  } else if (lvl < 5) {
    return 'assets/gif/a2.gif';
  } else if (lvl < 10) {
    return 'assets/gif/a3.gif';
  } else if (lvl < 15) {
    return 'assets/gif/a4.gif';
  } else if (lvl < 29) {
    return 'assets/gif/a5.gif';
  } else if (lvl < 42) {
    return 'assets/gif/a6.gif';
  } else if (lvl < 52) {
    return 'assets/gif/a7.gif';
  } else if (lvl < 79) {
    return 'assets/gif/a8.gif';
  } else if (lvl < 100) {
    return 'assets/gif/a9.gif';
  } else if (lvl < 120) {
    return 'assets/gif/a10.gif';
  } else {
    return '';
  }
}

String levelToGifUrlforCharacter2(int lvl) {
  if (lvl < 2) {
    return 'assets/gif/b1.gif';
  } else if (lvl < 5) {
    return 'assets/gif/b2.gif';
  } else if (lvl < 10) {
    return 'assets/gif/b3.gif';
  } else {
    return '';
  }
}

String levelToGifUrlforCharacter3(int lvl) {
  if (lvl < 2) {
    return 'assets/gif/c1.gif';
  } else if (lvl < 5) {
    return 'assets/gif/c2.gif';
  } else if (lvl < 10) {
    return 'assets/gif/c3.gif';
  } else {
    return '';
  }
}

// Pet とそれに対応する関数を関連付けるマップ
final petToFunction = {
  Pet.caracter1: levelToGifUrlforCharacter1,
  Pet.caracter2: levelToGifUrlforCharacter2,
  Pet.caracter3: levelToGifUrlforCharacter3,
};

String getGifUrlForPet(Pet pet, int lvl) {
  return petToFunction[pet]!(lvl); // 対応する関数を呼び出します
}
