import 'package:flutter/material.dart';

class TestPractices extends StatefulWidget {
  const TestPractices({super.key});

  @override
  State<TestPractices> createState() => _TestPracticesState();
}

class _TestPracticesState extends State<TestPractices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test practices"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container();
  }
}
