import 'package:flutter_test/flutter_test.dart';
import 'package:codecrew/main.dart'; // Ensure this matches your project name

void main() {
  testWidgets('Onboarding screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CodeCrewApp()); // Use CodeCrewApp instead of MyApp

    // Verify that the onboarding screen is displayed.
    expect(find.text('Welcome to CodeCrew!'), findsOneWidget); // Adjust this based on your OnboardingScreen text
  });
}