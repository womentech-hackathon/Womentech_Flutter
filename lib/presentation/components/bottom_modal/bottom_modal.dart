import 'package:flutter/material.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';

class BottomModal extends StatefulWidget {
  final String titleText;

  const BottomModal({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  State<BottomModal> createState() => _BottomModalState();
}

class _BottomModalState extends State<BottomModal> {
  String? selectedDay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey),
            ),
          ),
          child: Text(
            selectedDay ?? widget.titleText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet<String>(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 320,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.titleText,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectIndexContainer(
                            text: '월',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '화',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '수',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '목',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '금',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '토',
                            hasShadow: false,
                          ),
                          SelectIndexContainer(
                            text: '일',
                            hasShadow: false,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, selectedDay);
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 135.0,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff5C82FC),
                        ),
                      ),
                      child: const Text(
                        '선택 완료',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
