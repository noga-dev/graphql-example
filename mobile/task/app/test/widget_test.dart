// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app/main.dart';
import 'package:app/models/exchange_rate_model.dart';
import 'package:app/services/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mock_data.dart';

void main() {
  testWidgets(
    'Main app > First Screen > Second Screen',
    (WidgetTester tester) async {
      final parsedList = ExchangeRateListModel.fromJson(
        exchangeRatesListJson,
      );

      final parsedItem = ExchangeRateItemModel.fromJson(
        exchangeRateItemJson,
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            exchangeRateListProvider().overrideWith(
              (ref) => Future.delayed(
                const Duration(milliseconds: 500),
                () => parsedList,
              ),
            ),
            exchangeRateItemProvider(code: parsedItem.code).overrideWith(
              (ref) => Future.delayed(
                const Duration(milliseconds: 400),
                () => parsedItem,
              ),
            ),
          ],
          child: const MyApp(),
        ),
      );

      // first screen
      await tester.pumpAndSettle();

      expect(find.text(parsedList.exchangeRates.first.code), findsOneWidget);
      // expect(
      //   find.text(
      //     parsedList.exchangeRates.first.rates.last.toStringAsFixed(
      //       Consts.defaultDecimalDigits,
      //     ),
      //   ),
      //   findsWidgets,
      // );

      expect(find.text(parsedList.exchangeRates.last.code), findsOneWidget);

      expect(find.byType(Icon), findsWidgets);

      await tester.tap(find.text(parsedItem.code));

      // second screen
      await tester.pumpAndSettle();

      expectLater(find.text(parsedItem.code), findsOneWidget);
      expectLater(find.text(parsedItem.description), findsOneWidget);
    },
  );
}
