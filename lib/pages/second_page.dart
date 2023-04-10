import 'package:fluent_ui/fluent_ui.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: ScaffoldPage(
        header: PageHeader(
          title: const Text("This is Second Screen"),
          leading: IconButton(
            icon: const Icon(FluentIcons.back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item ${index + 1}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
