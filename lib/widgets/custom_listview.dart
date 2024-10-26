import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({super.key});

  final List<Map<String, String>> MyList = [
    {"img": "https://static.vecteezy.com/system/resources/thumbnails/008/846/297/small_2x/cute-boy-avatar-png.png", "title": "Sabbir"},
    {"img": "https://static.vecteezy.com/system/resources/thumbnails/041/641/689/small/3d-character-people-close-up-portrait-smiling-nice-3d-avartar-or-icon-png.png", "title": "Rakib"},
    {"img": "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_640.png", "title": "Moshiur"},
    {"img": "https://static.vecteezy.com/system/resources/thumbnails/012/177/622/small_2x/man-avatar-isolated-png.png", "title": "Hasibul"},
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: MyList.map((item) => Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network(
                item["img"]!,
                height: 150, // Set an appropriate height for each image
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                item["title"]!,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )).toList(),
      );
  }
}
