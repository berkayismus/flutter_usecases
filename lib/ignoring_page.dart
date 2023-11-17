import 'package:flutter/material.dart';
import 'package:flutter_usecases/ignore_pointer/ignore_pointer.dart';

class IgnoringPage extends StatefulWidget {
  const IgnoringPage({super.key});

  @override
  State<IgnoringPage> createState() => _IgnoringPageState();
}

class _IgnoringPageState extends State<IgnoringPage> {
  bool _isLoading = false;

  void getFakeNetworkReq() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyIgnorePointer(
      ignoring: _isLoading,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: getFakeNetworkReq,
              child: const Text(
                "Get request",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
