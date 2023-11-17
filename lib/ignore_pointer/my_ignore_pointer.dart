import 'package:flutter/material.dart';

class MyIgnorePointer extends StatelessWidget {
  const MyIgnorePointer({
    super.key,
    required this.ignoring,
    this.onWillPop,
    required this.child,
  });

  final bool ignoring;
  final Future<bool> Function()? onWillPop;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop ?? () async => Future.value(!ignoring),
      child: IgnorePointer(
        ignoring: ignoring,
        child: Stack(
          children: [
            child,
            Visibility(
              visible: ignoring,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
