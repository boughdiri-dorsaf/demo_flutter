import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading: const Icon(
            Icons.person,
          ),
          title: Text(
            "Item ${index + 1}",
          ),
          subtitle: const Text(
            "item",
          ),
          trailing: const Icon(
            Icons.person_add,
          ),
          onTap: () {
            debugPrint("Item ${index + 1}");
          },
        );
      },
    );
  }
}
