import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:women_tech_flutter/presentation/components/day_task_check_tile/day_task_check_tile.dart';

class TaskMainScreen extends StatefulWidget {
  const TaskMainScreen({Key? key}) : super(key: key);

  @override
  State<TaskMainScreen> createState() => _TaskMainScreenState();
}

class _TaskMainScreenState extends State<TaskMainScreen> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: ElevatedButton(
              onPressed: () {
                context.push('/on-boarding/step1');
              },
              style: ButtonStyle(
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 14,
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xffFFDC62),
                ),
              ),
              child: const Text(
                '이용방법',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 18.0,
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              width: 90,
                              height: 26,
                            ),
                            Positioned(
                              bottom: 5,
                              child: Container(
                                color: const Color(0xffFFDC62),
                                width: 100,
                                height: 8,
                              ),
                            ),
                            const Positioned(
                              child: Text(
                                '바리스타',
                                style: TextStyle(
                                  decorationThickness: 5,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '를 향한',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '오늘의 실천사항입니다:)',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff5C82FC),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '8월 2주차',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff5C82FC),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DayTaskCheckTile(
                      day: '월',
                      date: '12',
                      backgroundColor: Color(0xffFFDC62),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '화',
                      date: '13',
                      backgroundColor: Color(0xff00C67E),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '수',
                      date: '14',
                      backgroundColor: Color(0xff00C67E),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '목',
                      date: '15',
                      backgroundColor: Color(0xffFF586C),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '금',
                      date: '16',
                      backgroundColor: Color(0xffFFDC62),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '토',
                      date: '17',
                      backgroundColor: Color(0xff00C67E),
                      isSelected: false,
                    ),
                    DayTaskCheckTile(
                      day: '일',
                      date: '18',
                      backgroundColor: Color(0xffFF586C),
                      isSelected: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF7F8F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isClicked = !isClicked;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.check_circle,
                                    color: isClicked
                                        ? const Color(0xff5C82FC)
                                        : const Color(0xffE9EBEE),
                                    size: 34,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Expanded(
                                  child: Text(
                                    '바리스타 필기 공부',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.more_horiz,
                                  color: Color(0xff5C82FC),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: const BorderRadius.all(
                        //       Radius.circular(12),
                        //     ),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.grey.withOpacity(0.2),
                        //         spreadRadius: 2,
                        //         blurRadius: 4,
                        //         offset: const Offset(0, 2),
                        //       ),
                        //     ],
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20.0),
                        //     child: Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         IconButton(
                        //           onPressed: () {
                        //             setState(() {
                        //               isClicked = !isClicked;
                        //             });
                        //           },
                        //           icon: Icon(
                        //             Icons.check_circle,
                        //             color: isClicked
                        //                 ? const Color(0xffE9EBEE)
                        //                 : const Color(0xff5C82FC),
                        //             size: 34,
                        //           ),
                        //         ),
                        //         const SizedBox(width: 12),
                        //         const Expanded(
                        //           child: Text(
                        //             '오전 10:00 실기학원',
                        //             style: TextStyle(
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.w600,
                        //             ),
                        //           ),
                        //         ),
                        //         const Icon(
                        //           Icons.more_horiz,
                        //           color: Color(0xff5C82FC),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 26),
                        GestureDetector(
                          onTap: () {
                            context.push('/task/list');
                          },
                          child: Center(
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xff707882),
                                  ),
                                ),
                              ),
                              child: const Text(
                                '실천사항 모두 보기',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff707882),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.push('/task/add');
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xff5C82FC),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        ),
                      ),
                      child: const Text(
                        '실천사항 추가',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
