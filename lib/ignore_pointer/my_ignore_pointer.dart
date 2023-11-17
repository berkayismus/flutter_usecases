import 'package:flutter/material.dart';

class MyIgnorePointer extends StatelessWidget {
  const MyIgnorePointer({
    super.key,
    required this.ignoring,
    required this.child,
  });

  final bool ignoring;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.value(!ignoring),
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
