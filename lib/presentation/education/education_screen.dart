import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:women_tech_flutter/presentation/components/education_container/education_container.dart';
import 'package:women_tech_flutter/presentation/components/select_index_container/select_index_container.dart';
import 'package:women_tech_flutter/presentation/education/education_view_model.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen>
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
    final viewModel = context.watch<EducationViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffdee7ff), Colors.white],
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(22.0),
                child: Text(
                  '중장년을 위한 \n교육 정보입니다.',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  '전체 56',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '찜한 교육 2',
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
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 24.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SelectIndexContainer(
                                  text: '모두보기',
                                  hasShadow: false,
                                  borderRadius: 20,
                                  unSelectedColor: Color(0xff517BFC),
                                  unSelectedTextColor: Colors.white,
                                  horizontalPadding: 10.0,
                                  verticalPadding: 5.0,
                                  fontSize: 16,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: SelectIndexContainer(
                                    text: '접수중',
                                    hasShadow: false,
                                    borderRadius: 20,
                                    unSelectedColor: Colors.white,
                                    unSelectedTextColor: Colors.grey,
                                    horizontalPadding: 10.0,
                                    verticalPadding: 5.0,
                                    fontSize: 16,
                                  ),
                                ),
                                SelectIndexContainer(
                                  text: '마감',
                                  hasShadow: false,
                                  borderRadius: 20,
                                  unSelectedColor: Colors.white,
                                  unSelectedTextColor: Colors.grey,
                                  horizontalPadding: 10.0,
                                  verticalPadding: 5.0,
                                  fontSize: 16,
                                ),
                              ],
                            ),
                            Text('최신순 ▼'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: const [
                            Column(
                              children: [
                                EducationContainer(
                                  title: '일반경비원 신임교육 2기',
                                  isRegistered: true,
                                  unSelectedTextColor: Colors.white,
                                  unSelectedColor: Color(0xff517BFC),
                                ),
                                SizedBox(height: 20),
                                EducationContainer(
                                  title: '온라인 입사지원 교육 2기',
                                  isRegistered: true,
                                  unSelectedTextColor: Color(0xff517BFC),
                                  unSelectedColor: Color(0xffF7F8F9),
                                ),
                                SizedBox(height: 20),
                                EducationContainer(
                                  title: '바리스타2급 실기&시험 과정(오전반)',
                                  isRegistered: false,
                                  unSelectedTextColor: Colors.white,
                                  unSelectedColor: Color(0xff517BFC),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          '총 2건이 있습니다.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Text(
                        '최근 찜한 순서대로 보여집니다.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: const [
                            Column(
                              children: [
                                EducationContainer(
                                  title: '일반경비원 신임교육 2기',
                                  isRegistered: true,
                                  unSelectedTextColor: Colors.white,
                                  unSelectedColor: Color(0xff517BFC),
                                ),
                                SizedBox(height: 20),
                                EducationContainer(
                                  title: '바리스타2급 실기&시험 과정(오전반)',
                                  isRegistered: false,
                                  unSelectedTextColor: Colors.white,
                                  unSelectedColor: Color(0xff517BFC),
                                ),
                              ],
                            )
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
