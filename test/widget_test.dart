import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:film_listesi/main.dart';  // Bu satırı güncelleyin

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // MyApp widget'ını başlat
    await tester.pumpWidget(const MyApp());

    // Başlangıçta 0 olmasını bekliyoruz
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Butona bas ve sayaç artışını kontrol et
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Şimdi sayaç 1 olmalı
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
