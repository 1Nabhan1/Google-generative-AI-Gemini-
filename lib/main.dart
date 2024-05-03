import 'package:chat_gpt/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Theme_controller/Theme_mode.dart';
import 'Presentations/chat_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:  AiPage(),
    );
  }
}
// https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=687d0a3b364a402594f064c098af0fee