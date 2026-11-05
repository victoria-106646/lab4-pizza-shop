import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_selab/main.dart';

void main() {
  // to check whether all menu items are displayed.
  testWidgets('Menu displays three food items',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  // to check whether tapping a menu item opens its detail page.
  testWidgets('Tapping a menu item opens detail page',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    expect(find.text(
      'A delicious pizza topped with fresh vegetables.',
    ), findsOneWidget);
  });

  // to check whether the back button returns to the menu.
  testWidgets('Back button returns to menu',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Our Menu'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
  });
}