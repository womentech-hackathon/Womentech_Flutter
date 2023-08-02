import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    '만나서 반가워요:) \n이루다에서 사용하실 아이디와 \n비밀번호를 입력해주세요.',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 66),
                  TextFormField(
                    controller: _nameController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(hintText: '이름'),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _idController,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: '아이디'),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    autofocus: true,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: '비밀번호'),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPasswordController,
                    autofocus: true,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: '비밀번호 재확인'),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/signup-confirm');
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
              '완료',
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
