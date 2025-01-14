import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ltrc/contants/routes.dart';
import 'package:ltrc/extensions.dart';
import 'package:ltrc/views/register_view.dart';
import 'package:ltrc/views/words_view.dart';

void main() {
   runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: "#F5F5DC".toColor()),
          foregroundColor: "#F5F5DC".toColor(),
          color: "#28231D".toColor()
        ),
        scaffoldBackgroundColor: "#28231D".toColor(),
        useMaterial3: true,
      ),
      routes: AppRoutes.define(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WordsView();
  }
}