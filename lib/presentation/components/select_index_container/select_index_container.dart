import 'package:flutter/material.dart';

class SelectIndexContainer extends StatefulWidget {
  final String text;
  final bool hasShadow;

  const SelectIndexContainer({
    Key? key,
    required this.text,
    required this.hasShadow,
  }) : super(key: key);

  @override
  State<SelectIndexContainer> createState() => _SelectIndexContainerState();
}

class _SelectIndexContainerState extends State<SelectIndexContainer> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedIndex == 0) {
            selectedIndex = null;
          } else {
            selectedIndex = 0;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff5C82FC),
          ),
          color: selectedIndex == 0 ? const Color(0xff5C82FC) : Colors.white,
          boxShadow: widget.hasShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 11.0,
            vertical: 7.0,
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color:
                  selectedIndex == 0 ? Colors.white : const Color(0xff5C82FC),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
