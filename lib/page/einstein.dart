import 'package:flutter/material.dart';

class LearnFlutterPgae extends StatefulWidget {
  const LearnFlutterPgae({super.key});

  @override
  State<LearnFlutterPgae> createState() => _LearnFlutterPgaeState();
}

class _LearnFlutterPgaeState extends State<LearnFlutterPgae> {
  bool isChanged = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Einstein"),
        automaticallyImplyLeading: false,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Info button");
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/einstein.png"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.blue,
              child: const Text(
                "Hello their !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isChanged ? Colors.grey : Colors.yellow,
              ),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button");
              },
              child: const Text("Outlined Button"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Row Clicked !");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.contact_mail,
                    color: Colors.blue,
                  ),
                  Text("--Row--"),
                  Icon(
                    Icons.departure_board,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isChanged,
              onChanged: (bool changed) {
                setState(
                  () {
                    isChanged = changed;
                  },
                );
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? checked) {
                setState(
                  () {
                    isChecked = checked;
                  },
                );
              },
            ),
            Image.network(
                "https://www.biography.com/.image/t_share/MTc5ODc5NjY5ODU0NjQzMzIy/gettyimages-3091504.jpg",
                scale: 1),
          ],
        ),
      ),
    );
  }
}
