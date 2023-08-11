import 'package:flutter/material.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';

class EducationContainer extends StatefulWidget {
  final String title;
  final Color unSelectedColor;
  final Color unSelectedTextColor;
  final bool isRegistered;

  const EducationContainer({
    Key? key,
    required this.title,
    required this.unSelectedColor,
    required this.unSelectedTextColor,
    required this.isRegistered,
  }) : super(key: key);

  @override
  State<EducationContainer> createState() => _EducationContainerState();
}

class _EducationContainerState extends State<EducationContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 170,
          decoration: BoxDecoration(
            color: widget.isRegistered
                ? const Color(0xff517BFC)
                : const Color(0xffD4D6DC),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffF7F8F9),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.isRegistered ? '● 접수중' : '● 마감',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: widget.isRegistered
                              ? const Color(0xff517BFC)
                              : const Color(0xffD4D6DC),
                        ),
                      ),
                      SelectIndexContainer(
                        text: '찜 ♥',
                        hasShadow: false,
                        borderRadius: 8,
                        unSelectedColor: widget.unSelectedColor,
                        unSelectedTextColor: widget.unSelectedTextColor,
                        horizontalPadding: 10.0,
                        verticalPadding: 4.0,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Text('신청기간: 2023/07/21 ~ 2023/08/15'),
                  const Text('교육기간: 2023/09/01 ~ 2023/11/30'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
