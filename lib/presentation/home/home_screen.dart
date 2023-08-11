import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: ElevatedButton(
              onPressed: () {},
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
              child: GestureDetector(
                onTap: () {
                  context.push('/on-boarding/step1');
                },
                child: const Text(
                  '이용방법',
                  style: TextStyle(
                    color: Colors.black,
                  ),
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
              vertical: 17.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                      '를 꿈꾸는',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '권혁선님의 오늘의 실천사항(2)',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/note.png',
                          fit: BoxFit.cover,
                          width: 190,
                          height: 220,
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '바리스타 필기 공부',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 48,
                        left: 14,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 3.0,
                          ),
                          child: Text(
                            '66일째 실천중',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFDC62),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFDC62),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '월',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 52,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFDC62),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '수',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/barista.png',
                          fit: BoxFit.cover,
                          width: 190,
                          height: 220,
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '오전 10:00 실기학원',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 48,
                        left: 14,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 3.0,
                          ),
                          child: Text(
                            '32일째 실천중',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFDC62),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFDC62),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '화',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 52,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFDC62),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '목',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 90,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFDC62),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              '금',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xffF7F8F9),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '권혁선님이 찜한 \n교육 정보(3)',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/education');
                    },
                    child: const SelectIndexContainer(
                      text: '모두보기',
                      hasShadow: false,
                      borderRadius: 18.5,
                      unSelectedColor: Color(0xff5C82FC),
                      unSelectedTextColor: Colors.white,
                      verticalPadding: 6,
                      horizontalPadding: 10,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: const Color(0xffF7F8F9),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 22.0,
                      left: 22.0,
                      bottom: 22.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 13,
                              height: 135,
                              decoration: const BoxDecoration(
                                color: Color(0xff517BFC),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '● 접수중',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff517BFC),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        child: Text(
                                          '바리스타2급 실기&시험 과정(오전반)',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text('신청기간: 2023/07/21 ~ 2023/08/15'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Container(
                              width: 13,
                              height: 135,
                              decoration: const BoxDecoration(
                                color: Color(0xff517BFC),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '● 접수중',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff517BFC),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        child: Text(
                                          '취업을 위한 스마트폰 교육',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text('신청기간: 2023/08/03 ~ 2023/08/17'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Container(
                              width: 13,
                              height: 135,
                              decoration: const BoxDecoration(
                                color: Color(0xffA8B0B9),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '● 마감',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffA8B0B9),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        child: Text(
                                          '바리스타2급 실기&시험 과정(오후반)',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text('신청기간: 2023/07/21 ~ 2023/08/15'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
