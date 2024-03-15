import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({super.key,required this.img,required this.label});
  final String img,label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(padding: EdgeInsets.all(10),
            height: 85,
            width: 85,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.amber,image: DecorationImage(image: NetworkImage(img))),
            
            
          ),
          Text(label)
        ],
      ),
    );
    
  }
}
