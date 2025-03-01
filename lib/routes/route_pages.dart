import 'package:flutter/material.dart';
import 'package:tugas2/pages/cat_detail_page.dart';
import 'package:tugas2/pages/cat_list_page.dart';

class RoutePages {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/cat_list_page':
        return MaterialPageRoute(builder: (_) => const CatListPage());
      case '/cat_detail_page':
        return MaterialPageRoute(
          builder: (_) => CatDetailPage(), settings: settings
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404 - Page Not Found')),
          ),
        );
    }
  }
  
}