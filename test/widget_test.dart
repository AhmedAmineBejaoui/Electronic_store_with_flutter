import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:store_app/main.dart';

void main() {
  testWidgets('Store app uses the expected title and Arabic locale',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.title, 'Electrical Store');
    expect(app.locale, const Locale('ar', 'AE'));
    expect(find.byType(Directionality), findsWidgets);
  });
}
