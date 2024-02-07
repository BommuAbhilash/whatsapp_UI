import "package:flutter/material.dart";


List<String> _listImages = const [
  "images/myprofile.jpg",
  "images/myprofile1.jpg",
];


class Chats extends StatelessWidget {
  const Chats({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(0),
      
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _listImages.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(_listImages[index]), radius: 20),
            title: Text('Tile $index'),
            subtitle: Text('it is a subtitle description $index'),
            trailing: const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 12,
              child: Text("2"),
            ),
          );
          // return Image.asset(_listImages[index], fit: BoxFit.cover, width: 100);
        },
      ),
    );
  }
}
