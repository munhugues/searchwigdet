// import 'package:flutter/material.dart';

// class DetailPage extends StatelessWidget {
//   final String fruit;

//   DetailPage({required this.fruit});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(fruit)),

//       body: Padding(
//         padding: EdgeInsets.all(20),

//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               fruit,
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 20),

//             Text(
//               "Description",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//             ),

//             SizedBox(height: 10),

//             Text(
//               "$fruit is a nutritious fruit rich in vitamins and minerals. "
//               "This page can display more detailed information, images, "
//               "nutrition facts, or API results.",
//               style: TextStyle(fontSize: 16),
//             ),

//             SizedBox(height: 30),

//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text("Back"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String fruit;

  DetailPage({required this.fruit});

  final Map<String, Map<String, String>> fruitData = {
    "Apple": {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg",
      "calories": "52 kcal",
      "vitamin": "Vitamin C",
      "fiber": "2.4 g",
      "description":
          "Apples are nutritious fruits rich in fiber and antioxidants.",
    },

    "Banana": {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg",
      "calories": "96 kcal",
      "vitamin": "Vitamin B6",
      "fiber": "2.6 g",
      "description":
          "Bananas are a great source of potassium and quick energy.",
    },

    "Mango": {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/90/Hapus_Mango.jpg",
      "calories": "60 kcal",
      "vitamin": "Vitamin A",
      "fiber": "1.6 g",
      "description": "Mangoes are tropical fruits known for their sweet taste.",
    },
  };

  @override
  Widget build(BuildContext context) {
    final data = fruitData[fruit]!;

    return Scaffold(
      appBar: AppBar(title: Text(fruit)),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              data["image"]!,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),

                  Text(data["description"]!, style: TextStyle(fontSize: 16)),

                  SizedBox(height: 30),

                  Text(
                    "Nutrition Facts",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 15),

                  Card(
                    child: ListTile(
                      leading: Icon(Icons.local_fire_department),
                      title: Text("Calories"),
                      trailing: Text(data["calories"]!),
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: Icon(Icons.health_and_safety),
                      title: Text("Main Vitamin"),
                      trailing: Text(data["vitamin"]!),
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: Icon(Icons.grain),
                      title: Text("Fiber"),
                      trailing: Text(data["fiber"]!),
                    ),
                  ),

                  SizedBox(height: 30),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back to Search"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
