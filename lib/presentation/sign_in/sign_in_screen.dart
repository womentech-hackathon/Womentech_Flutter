import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '서비스명',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  renderTextFormField(
                    controller: _idController,
                    label: '아이디',
                    onSaved: (val) {},
                    validator: (val) {
                      if (val.length < 1) return '아이디는 필수사항입니다.';
                      if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(val)) return '잘못된 이메일 형식입니다.';
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  renderTextFormField(
                    controller: _passwordController,
                    label: '비밀번호',
                    onSaved: (val) {},
                    validator: (val) {
                      if (val.length < 1) return '비밀번호는 필수사항입니다.';
                      if (val.length < 8) return '8자 이상 입력해주세요.';
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(double.infinity, 56),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  const SnackBar(
                    content: Text('로그인 되었습니다.'),
                  );
                }
              },
              child: const Text(
                '로그인하기',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('아직 회원이 아니신가요?'),
            ElevatedButton(
              onPressed: () {
                context.push('/signup');
              },
              child: const Text('회원가입 하기'),
            ),
          ],
        ),
      ),
    );
  }
}

renderTextFormField({
  required controller,
  required String label,
  required FormFieldSetter onSaved,
  required FormFieldValidator validator,
}) {
  return Column(
    children: [
      TextFormField(
        decoration: InputDecoration(
          hintText: label,
        ),
        onSaved: onSaved,
        validator: validator,
      ),
    ],
  );
}
