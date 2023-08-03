import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:women_tech_flutter/presentation/components/bottom_modal/bottom_modal.dart';

class OnBoardingStepThreeScreen extends StatefulWidget {
  const OnBoardingStepThreeScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingStepThreeScreen> createState() =>
      _OnBoardingStepThreeScreenState();
}

class _OnBoardingStepThreeScreenState extends State<OnBoardingStepThreeScreen> {
  final jobController = TextEditingController();
  final tooltipController = JustTheController();
  int? selectedIndex;

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
                    '단계 3/3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5c82fc),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    '해당 직업을 갖기 위해 \n하루하루 실천해야 할 것을 \n적어주세요.',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff111111),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: jobController,
                          decoration:
                              const InputDecoration(hintText: '예시) 자격증 공부'),
                        ),
                      ),
                      const Text(
                        '  을(를)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 100),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '매주',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      BottomModal(
                        titleText: '요일 선택',
                      ),
                      Text(
                        '요일마다 실천할 거예요.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/on-boarding/confirm');
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
