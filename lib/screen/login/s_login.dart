import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("로그인"),
      ) ,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: const Column(
            children: [
              InputTextField(hintText: "이메일 또는 ID",),
              SizedBox(height: 15),
              InputTextField(hintText: "비밀번호",),
              SizedBox(height: 15),
              LoginButton(
                title: "로그인",
                textColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              Separator(),
              LoginButton(
                  title: "카카오 로그인",
                  textColor: Colors.black,
                  backgroundColor: Colors.yellow,
              ),
              SizedBox(height: 10),
              LoginButton(
                title: "네이버 로그인",
                textColor: Colors.white,
                backgroundColor: Colors.green,
              ),
              SizedBox(height: 10),
              LoginButton(
                title: "애플 로그인",
                textColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backgroundColor;
  const LoginButton({super.key,
    required this.title,
    required this.textColor,
    required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            )
        ),
        child: Text(title),),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: const Text("간편로그인"),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  final String hintText;
  const InputTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 13),
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}



