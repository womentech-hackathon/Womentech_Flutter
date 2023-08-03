import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class OnBoardingStepTwoScreen extends StatefulWidget {
  const OnBoardingStepTwoScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingStepTwoScreen> createState() =>
      _OnBoardingStepTwoScreenState();
}

class _OnBoardingStepTwoScreenState extends State<OnBoardingStepTwoScreen> {
  final jobController = TextEditingController();
  final tooltipController = JustTheController();

  @override
  void dispose() {
    jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '단계 2/3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5c82fc),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    '새로운 직업을 가지고 \n싶으시군요! \n\n어떤 직업을 원하시나요?',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff111111),
                    ),
                  ),
                  JustTheTooltip(
                    backgroundColor: const Color(0xff434E58),
                    controller: tooltipController,
                    content: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 16.0,
                      ),
                      child: Text(
                        '5060에게 떠오르는 신직업으로 \n드론조종자, 귀농귀촌플래너, 도시농업관리사, \n웰다잉전문가, 진로체험코디네이터 등이 있어요.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    child: Material(
                      child: ElevatedButton(
                        onPressed: () {
                          tooltipController.showTooltip();
                        },
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 10.0,
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff5C82FC),
                          ),
                        ),
                        child: const Text(
                          '예시보기',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: jobController,
                          decoration:
                              const InputDecoration(hintText: '예시) 바리스타'),
                        ),
                      ),
                      const Text('    이(가) 되고싶어요.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/on-boarding/step3');
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
