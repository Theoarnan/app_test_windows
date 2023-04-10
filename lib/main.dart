import 'package:app_test_windows/pages/first_page.dart';
import 'package:app_test_windows/pages/home_page.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Flutter Windows Test',
      theme: FluentThemeData(
        accentColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
