import 'package:flutter/material.dart';

List<String> listImages = const [
  "images/myprofile.jpg",
  "images/myprofile1.jpg",
];
List<String> one = const ["animal", "birds", "reptiles"];

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(listImages[index]),
                        radius: 30),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Tile$index"),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.1))
          ), 
        ),
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Channels",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.add, color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}
