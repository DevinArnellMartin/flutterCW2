import 'package:flutter_app/homeDart.dart'; 
import 'package:flutter_app/detailsDart.dart'; 
import 'package:flutter_test/flutter_test.dart'; 
import 'package:flutter_app/main.dart'; 

void main() {
  testWidgets('Recipe List Navigation Test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(RecipeApp());
    expect(find.text('Curry Chicken'), findsOneWidget);


  });
}

