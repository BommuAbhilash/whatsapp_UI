import 'package:flutter/material.dart';


List<String> listImages = const [
  "images/myprofile.jpg",
  "images/myprofile1.jpg",
];

class Calls extends StatelessWidget {
     Calls({super.key});
     
  
  final DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 24,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 14, 8, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create call link",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share a link for your whatsapp call",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 1, 0, 0),
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listImages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(listImages[index]),
                        radius: 20),
                    title: Text('Tile $index'),
                    subtitle: Text('November ${today.day}, ${today.hour}:${today.minute} PM '),
                    trailing:  const Icon(Icons.call,color: Colors.green),
                  );
                   
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
