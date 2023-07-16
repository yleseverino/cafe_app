import 'package:cafe_app/data/option.dart';
import 'package:cafe_app/presentantion/components/list_options_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('Widget ListOptionContent', () {
    testWidgets(
        '[Widget ListOptionContent] [Check if blocked button to click] [Expected 60]',
            (WidgetTester tester) async {
          Option? optionSelectedShoudBeNull;
          await tester.pumpWidget(Material(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: ListOptionContent(
                listOptions: [
                  Option('Muito grão', 3),
                  Option('Quantidade media', 2),
                  Option('Pouca quantidade', 1),
                ],
                onSelect: (Option option) {
                  optionSelectedShoudBeNull = option;
                },
              ),
            ),
          ));

          await tester.tap(find.byType(ElevatedButton));

          expect(optionSelectedShoudBeNull, null);
        });

    testWidgets(
        '[Widget ListOptionContent] [Check if select correct option] [Expected true]',
            (WidgetTester tester) async {
          Option? optionSelected;
          await tester.pumpWidget(Material(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: ListOptionContent(
                listOptions: [
                  Option('Muito grão', 3),
                  Option('Quantidade media', 2),
                  Option('Pouca quantidade', 1),
                ],
                onSelect: (Option option) {
                  optionSelected = option;
                },
              ),
            ),
          ));

          await tester.tap(find.byKey(Key('3')));
          await tester.pumpAndSettle();
          await tester.tap(find.byType(ElevatedButton));

          expect(optionSelected?.title, 'Muito grão');
        });
  });


}
