import 'package:flutter/material.dart';
import 'package:tugas2/routes/route_pages.dart';
import 'pages/cat_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutePages.generateRoute,
      home: const CatListPage(),
    );
  }
}
