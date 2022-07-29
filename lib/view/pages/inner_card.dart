import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

class InnerCard extends StatefulWidget {
  const InnerCard({Key? key}) : super(key: key);

  @override
  State<InnerCard> createState() => _InnerCardState();
}

class _InnerCardState extends State<InnerCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/business.png",fit: BoxFit.cover),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "article?[index].source!.name}",
                        style: const TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Puplished at: date",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  Text("Title",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[900])),
                  const SizedBox(height: 10),
                  Text(
                    "content",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54),
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

// Widget innerCard(
//   String image,
//   String title,
//   String date,
//   String content,
//   article,
//   index,
// ) {
//   return Scaffold(
//     body: Column(
//       children: [
//         Container(
//           child: Image.network(image),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.redAccent,
//             borderRadius: BorderRadius.circular(3),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               "${article?[index].source!.name}",
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         Text(title),
//         Text(date),
//         Text(content),
//       ],
//     ),
//   );
// }
