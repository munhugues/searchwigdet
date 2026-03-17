import 'package:flutter/material.dart';
import 'search_details.dart';

class SearchPage extends StatelessWidget {
  final List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
    "Pineapple",
    "Watermelon",
    "Passion",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fruit Search")),

      body: Padding(
        padding: EdgeInsets.all(16),

        child: SearchAnchor(
          builder: (context, controller) {
            return SearchBar(
              controller: controller,
              hintText: "Search fruits...",
              leading: Icon(Icons.search),

              onTap: () {
                controller.openView();
              },

              onChanged: (_) {
                controller.openView();
              },
            );
          },

          suggestionsBuilder: (context, controller) {
            final results = fruits.where(
              (fruit) =>
                  fruit.toLowerCase().contains(controller.text.toLowerCase()),
            );

            return results.map((fruit) {
              return ListTile(
                leading: Icon(Icons.local_grocery_store),
                title: Text(fruit),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(fruit: fruit),
                    ),
                  );
                },
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
