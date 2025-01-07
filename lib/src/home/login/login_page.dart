import 'package:app_learning_english/src/home/login/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:app_learning_english/src/compponents/button.dart';
import 'package:app_learning_english/src/compponents/login_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) =>
           Form(
            key: _formKey,
            child: Container(
              color: Colors.white,
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              padding: const EdgeInsets.only(
                  top: 60, left: 16, right: 16, bottom: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Nhập thông tin của bạn",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    LoginTextField(
                      context,
                      "Tên đăng nhập hoặc email",
                      controller: _controllerLogin,
                    ),
                    LoginTextField(
                      context,
                      "Mật khẩu", 
                      controller: _controllerPassword,
                      obscure: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                      "ĐĂNG NHẬP",
                      color:  Color(0xFF66BB6A),
                      colorText: Colors.white,
                      width: 350,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Button(
                      "CHƯA CÓ TÀI KHOẢN, HÃY ĐĂNG kí",
                      color:  Color(0xFF66BB6A),
                      colorText: Colors.white,
                      width: 350,
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signup(),
                            ),
                          );
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "QUÊN MẬT KHẨU",
                        style: TextStyle(
                          color:Color(0xFF66BB6A),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: (constraints.maxHeight) / 3.5),
                    Container(
                        margin: const EdgeInsets.all(16),
                        height: 60,
                        width: constraints.maxWidth,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade100,
                          ),
                          onPressed: () {},
                          child: const Text("Đăng nhập với Google"),
                        )),
                    const SizedBox(height: 12),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text.rich(
                        TextSpan(
                          text:
                          "Bằng cách đăng nhập, bạn đồng ý với",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFb2b2b0),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: " Điều khoản và ",
                                style: TextStyle(
                                    color: Color(0xFFa5a5a3),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "Chính sách bảo mật",
                                style: TextStyle(
                                    color: Color(0xFFa5a5a3),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}