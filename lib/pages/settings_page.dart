import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
