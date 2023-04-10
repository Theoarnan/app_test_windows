import 'package:app_test_windows/pages/second_page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        header: const PageHeader(
          title: Text("This is First Screen"),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    child: const Text('Normal Button'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text('Text Button'),
                    onPressed: () {},
                  ),
                  FilledButton(
                    child: const Text('Filled Button'),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                child: const Text('Go to SecondScreen'),
                onPressed: () {
                  Navigator.push(
                    context,
                    FluentPageRoute(
                      builder: (context) {
                        return const SecondPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
