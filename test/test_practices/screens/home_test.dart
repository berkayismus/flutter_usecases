import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_usecases/test_practices/models/favorites.dart';
import 'package:flutter_usecases/test_practices/screens/home.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );

void main() {
  group('home page widget tests', () {
    testWidgets('testing if listview shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('testing scrolling', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.text('Item 0'), findsOneWidget);

      await tester.fling(
        find.byType(ListView),
        const Offset(0, -200),
        3000,
      );
      await tester.pumpAndSettle();
      expect(find.text('Item 0'), findsNothing);
    });

    testWidgets('testing iconbuttons', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      // ekran açıldığında favorilere eklenmiş bir item var mı? [icon var mı]
      expect(find.byIcon(Icons.favorite), findsNothing);
      // ilk favori ikonuna bas [henüz favorilere eklenmemişken]
      await tester.tap(find.byIcon(Icons.favorite_border).first);
      // 1 saniye bekle
      await tester.pumpAndSettle(const Duration(seconds: 1));
      // added to favorites text'i var mı diye bak
      expect(find.text('Added to favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsWidgets);

      await tester.tap(find.byIcon(Icons.favorite).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Removed from favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsNothing);
    });
  });
}
