import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '실천사항 추가하기',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13),
                      ),
                      color: Colors.white,
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
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffFFDC62),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(9.0),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '실천사항 명칭 작성',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: '공부하기',
                            ),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffFFDC62),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(9.0),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '실천할 요일 선택',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 22),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectIndexContainer(
                                text: '월',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Color(0xff5C82FC),
                                unSelectedTextColor: Colors.white,
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '화',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Colors.white,
                                unSelectedTextColor: Color(0xff5C82FC),
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '수',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Color(0xff5C82FC),
                                unSelectedTextColor: Colors.white,
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '목',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Colors.white,
                                unSelectedTextColor: Color(0xff5C82FC),
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '금',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Color(0xff5C82FC),
                                unSelectedTextColor: Colors.white,
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '토',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Colors.white,
                                unSelectedTextColor: Color(0xff5C82FC),
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                              SelectIndexContainer(
                                text: '일',
                                hasShadow: false,
                                borderRadius: 8,
                                unSelectedColor: Colors.white,
                                unSelectedTextColor: Color(0xff5C82FC),
                                verticalPadding: 6,
                                horizontalPadding: 11,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(13),
                      ),
                      color: const Color(0xffF7F8F9),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add_rounded,
                      size: 60,
                      color: Color(0xffA8B0B9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('✅ 실천사항을 추가했어요.'),
                behavior: SnackBarBehavior.floating,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              context.go(
                '/home',
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xff5C82FC),
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
              '저장',
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
