import 'package:flutter/material.dart';
import 'news_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'All',
    'National',
    'Business',
    'Sports',
    'World',
    'Politics',
    'Technology',
    'Startup',
    'Entertainment',
    'Miscellaneous',
    'Hatke',
    'Science',
    'Automobile'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  categories[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsScreen(category: categories[index].toLowerCase()),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
