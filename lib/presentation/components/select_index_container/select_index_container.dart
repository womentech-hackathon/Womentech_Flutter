import 'package:flutter/material.dart';

class SelectIndexContainer extends StatefulWidget {
  final String text;
  final bool hasShadow;
  final double borderRadius;
  final Color unSelectedColor;
  final Color unSelectedTextColor;
  final double verticalPadding;
  final double horizontalPadding;

  const SelectIndexContainer({
    Key? key,
    required this.text,
    required this.hasShadow,
    required this.borderRadius,
    required this.unSelectedColor,
    required this.unSelectedTextColor,
    required this.verticalPadding,
    required this.horizontalPadding,
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
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: selectedIndex == 0
                ? const Color(0xff5C82FC)
                : widget.unSelectedTextColor,
          ),
          color: selectedIndex == 0
              ? const Color(0xff5C82FC)
              : widget.unSelectedColor,
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
          padding: EdgeInsets.symmetric(
            horizontal: widget.horizontalPadding,
            vertical: widget.verticalPadding,
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: selectedIndex == 0
                  ? Colors.white
                  : widget.unSelectedTextColor,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
