import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconsRow extends StatefulWidget {
  final IconData iconReceive;
  final String textReceive;
  final VoidCallback functionReceive;
  const IconsRow(
      {super.key,
      required this.iconReceive,
      required this.textReceive,
      required this.functionReceive});

  @override
  State<IconsRow> createState() => _IconsRowState();
}

class _IconsRowState extends State<IconsRow> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      onTap: widget.functionReceive,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            widget.iconReceive,
            size: 25.0,
            color: _isHovering ? Colors.white : Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.textReceive,
              style: GoogleFonts.sourceSans3(
                  color: _isHovering ? Colors.white : Colors.grey,
                  fontSize: screenSize.width * 0.015),
            ),
          )
        ],
      ),
    );
  }
}
