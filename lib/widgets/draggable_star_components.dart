import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  List<Color> inUseStars = [];
  List<Color> notInUseStars = [
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    const Color.fromARGB(255, 255, 123, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Stars:",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 170,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''	
Drag the stars between the lists. The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.''',
                style: GoogleFonts.roboto(),
              ),
              Row(
                children: [
                  Text(
                    'Presets:',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  // Add your preset buttons here
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "In use: ",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  buildDragTargetForInUseStars(),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Not in use: ",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  buildDraggableStarList(notInUseStars),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildStarList(List<Color> stars) {
    return Row(
      children: stars.map((color) {
        return Icon(Icons.star, color: color, size: 20);
      }).toList(),
    );
  }

  Widget buildDraggableStarList(List<Color> stars) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: stars.map((color) {
        return Draggable<Color>(
          data: color,
          feedback: Icon(Icons.star, color: color, size: 20),
          childWhenDragging: Container(),
          child: Icon(Icons.star, color: color, size: 20),
        );
      }).toList(),
    );
  }

  Widget buildDragTargetForInUseStars() {
    return DragTarget<Color>(
      onAccept: (color) {
        setState(() {
          inUseStars.add(color);
          notInUseStars.remove(color);
        });
      },
      builder: (context, candidateData, rejectedData) {
        return buildStarList(inUseStars);
      },
    );
  }
}
