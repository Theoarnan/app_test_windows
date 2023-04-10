import 'package:app_test_windows/pages/first_page.dart';
import 'package:app_test_windows/pages/second_page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text("Fluent Design App"),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        selected: index,
        onChanged: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.page),
            body: const FirstPage(),
            title: const Text("First Page"),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.custom_list),
            body: const SecondPage(),
            title: const Text("Second Page"),
          ),
        ],
      ),
    );
  }
}
