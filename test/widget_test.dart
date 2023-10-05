import 'package:flutter_test/flutter_test.dart';

import 'package:firebase_flutter_project/main.dart';

void main() {
  testWidgets('description', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

      expect(find.text('Flutter Firebase Demo'), findsOneWidget);
      expect(find.text('January 1st'), findsNothing);

  });
}
