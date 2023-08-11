import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  '실천중 2',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '실천 종료 1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22.0,
                    vertical: 30.0,
                  ),
                  child: Column(
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
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                top: 22.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '바리스타 필기 공부',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Color(0xff5C82FC),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.0),
                              child: Row(
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
                                  SizedBox(width: 12),
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
                                  SizedBox(width: 12),
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
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const DottedLine(
                              dashGapLength: 1,
                              dashColor: Color(0xffA8B0B9),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                bottom: 22.0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFFDC62),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        '실천 시작',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('2023년 7월 3일',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff707882),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
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
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                top: 22.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '오전 10:00 실기학원',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Color(0xff5C82FC),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.0),
                              child: Row(
                                children: [
                                  SelectIndexContainer(
                                    text: '화',
                                    hasShadow: false,
                                    borderRadius: 8,
                                    unSelectedColor: Color(0xff5C82FC),
                                    unSelectedTextColor: Colors.white,
                                    verticalPadding: 6,
                                    horizontalPadding: 11,
                                    fontSize: 18,
                                  ),
                                  SizedBox(width: 12),
                                  SelectIndexContainer(
                                    text: '목',
                                    hasShadow: false,
                                    borderRadius: 8,
                                    unSelectedColor: Color(0xff5C82FC),
                                    unSelectedTextColor: Colors.white,
                                    verticalPadding: 6,
                                    horizontalPadding: 11,
                                    fontSize: 18,
                                  ),
                                  SizedBox(width: 12),
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
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const DottedLine(
                              dashGapLength: 1,
                              dashColor: Color(0xffA8B0B9),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                bottom: 22.0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFFDC62),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        '실천 시작',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('2023년 6월 29일',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff707882),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22.0,
                    vertical: 30.0,
                  ),
                  child: Column(
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
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                top: 22.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '인강 듣기',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Color(0xff5C82FC),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.0),
                              child: Row(
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
                                  SizedBox(width: 12),
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
                                  SizedBox(width: 12),
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
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const DottedLine(
                              dashGapLength: 1,
                              dashColor: Color(0xffA8B0B9),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFFDC62),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        '실천 시작',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('2023년 7월 3일',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff707882),
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22.0,
                                right: 22.0,
                                bottom: 22.0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFFDC62),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.0,
                                        vertical: 2.0,
                                      ),
                                      child: Text(
                                        '실천 종료',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('2023년 7월 18일',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff707882),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
