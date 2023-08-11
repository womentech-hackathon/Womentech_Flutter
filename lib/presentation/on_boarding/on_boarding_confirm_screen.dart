import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingConfirmScreen extends StatefulWidget {
  const OnBoardingConfirmScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingConfirmScreen> createState() =>
      _OnBoardingConfirmScreenState();
}

class _OnBoardingConfirmScreenState extends State<OnBoardingConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '실천사항을 \n모두 입력했어요! \n\n열심히 계획을 세웠으니 \n이제 실천을 시작해볼까요?',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/home');
            },
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
              '시작하기',
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
