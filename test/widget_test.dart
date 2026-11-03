import 'package:flutter_test/flutter_test.dart';
import 'package:devfolio_app/main.dart';

void main() {
  testWidgets('DevFolio App inicia corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(const DevFolioApp());

    expect(find.text('DevFolio'), findsOneWidget);
    expect(find.text('Seu Nome'), findsOneWidget);
    expect(find.text('Minhas habilidades'), findsOneWidget);
  });
}
