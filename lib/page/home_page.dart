import 'package:flutter/material.dart';
import 'package:flutter_app/page/einstein.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LearnFlutterPgae(),
            ),
          );*/
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const LearnFlutterPgae();
          }));
        },
        child: const Text("Einstein Section"),
      ),
    );
  }
}
