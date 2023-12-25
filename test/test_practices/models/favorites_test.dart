import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_usecases/test_practices/models/favorites.dart';

void main() {
  group('testing app provider', () {
    var favorites = Favorites();

    test('a new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('an item should be removed', () {
      var number = 67;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
