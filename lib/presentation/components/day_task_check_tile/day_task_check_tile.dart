import 'package:flutter/material.dart';

class DayTaskCheckTile extends StatefulWidget {
  final bool isSelected;
  final Color backgroundColor;
  final String day;
  final String date;

  const DayTaskCheckTile({
    Key? key,
    required this.isSelected,
    required this.backgroundColor,
    required this.day,
    required this.date,
  }) : super(key: key);

  @override
  State<DayTaskCheckTile> createState() => _DayTaskCheckTileState();
}

class _DayTaskCheckTileState extends State<DayTaskCheckTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isSelected ? const Color(0xff28323C) : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(21),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 4.0,
          right: 4.0,
          bottom: 4.0,
          top: 6.0,
        ),
        child: Column(
          children: [
            Text(
              widget.day,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  widget.date,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
