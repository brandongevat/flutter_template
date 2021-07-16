import 'package:flutter_template/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("failing test example", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text("This is the home screen."), findsOneWidget);
    expect(find.text("This is the profile screen."), findsOneWidget);
  });
}
