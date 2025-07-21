import 'package:flutter_test/flutter_test.dart';
import 'package:crm_app/main.dart';

void main() {
  testWidgets('Dashboard shows welcome text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Welcome to CRM ERP System'), findsOneWidget);
  });
}
