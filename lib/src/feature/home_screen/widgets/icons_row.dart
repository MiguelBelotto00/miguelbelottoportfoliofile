import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconsRow extends StatefulWidget {
  const IconsRow({
    required this.iconReceive,
    required this.textReceive,
    required this.functionReceive,
    super.key,
  });
  final IconData iconReceive;
  final String textReceive;
  final VoidCallback functionReceive;

  @override
  State<IconsRow> createState() => _IconsRowState();
}

class _IconsRowState extends State<IconsRow> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      onTap: widget.functionReceive,
      child: Row(
        children: [
          Icon(
            widget.iconReceive,
            size: 25,
            color: _isHovering ? Colors.white : Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.textReceive,
              style: GoogleFonts.sourceSans3(
                color: _isHovering ? Colors.white : Colors.grey,
                fontSize: screenSize.width * 0.015,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
