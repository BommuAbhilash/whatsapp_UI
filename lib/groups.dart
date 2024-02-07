import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(16, 10),
                      topRight: Radius.elliptical(16, 10),
                      bottomLeft: Radius.elliptical(16, 10),
                      bottomRight: Radius.elliptical(16, 10),
                    ),
                    child: Container(
                      color: const Color.fromARGB(255, 215, 212, 212),
                      height: 50,
                      width: 50,
                      child: const Icon(Icons.groups_2_rounded,size: 36,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(14,12,0,0),
                child: Text(
                  "New community",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,wordSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.1))
          ), 
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(16, 10),
                      topRight: Radius.elliptical(16, 10),
                      bottomLeft: Radius.elliptical(16, 10),
                      bottomRight: Radius.elliptical(16, 10),
                    ),
                    child: Container(
                      color: Color.fromARGB(255, 134, 180, 229),
                      height: 50,
                      width: 50,
                      child: const Icon(Icons.self_improvement_rounded,size: 36,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(14,12,0,0),
                child: Text(
                  "HireInn-3",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,wordSpacing: 0.5),
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.1))
          ), 
        ),
      ],
    );
  }
}
