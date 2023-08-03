import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingStepOneScreen extends StatefulWidget {
  const OnBoardingStepOneScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingStepOneScreen> createState() =>
      _OnBoardingStepOneScreenState();
}

class _OnBoardingStepOneScreenState extends State<OnBoardingStepOneScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '단계 1/3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5c82fc),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    '재취업 계획 세우기 막막하시죠, \n목표부터 설정해봐요!',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
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
                      width: 346,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: selectedIndex == 0
                            ? const Color(0xff5C82FC)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Text(
                            '새로운 직업을 갖고 싶어요.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedIndex == 1) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = 1;
                        }
                      });
                    },
                    child: Container(
                      width: 346,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: selectedIndex == 1
                            ? const Color(0xff5C82FC)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Text(
                            '이전 경력을 살리고 싶어요.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedIndex == 2) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = 2;
                        }
                      });
                    },
                    child: Container(
                      width: 346,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: selectedIndex == 2
                            ? const Color(0xff5C82FC)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Text(
                            '잘 모르겠어요, \n다양한 직무 교육을 수강해보고 싶어요.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: selectedIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      context.push('/');
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
                          '선택 안하고 홈으로 이동할래요',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff707882),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: selectedIndex != null
                ? () {
                    switch (selectedIndex) {
                      case 0:
                        context.push('/on-boarding/step2');
                        break;
                      case 1:
                        context.push('/');
                        break;
                      case 2:
                        context.push('/');
                        break;
                    }
                  }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return const Color(0xff5C82FC);
                },
              ),
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, 98),
              ),
              shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            child: const Text(
              '다음',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
