import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_usecases/background_with_video/video_player_standard.dart';

// * bu projede denemek istediğim şeyleri uyguluyorum

final helloWorldProvider = Provider<String>((_) => "Hello world");

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(helloWorldProvider);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Usecases",
      home: VideoPlayerStandard(),
    );
  }
}
