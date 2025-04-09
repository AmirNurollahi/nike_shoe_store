import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_shoe_store/screens/begin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Signup ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'welcome to nike store',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: inputDecorationfunc('Username'),
              ),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecorationfunc('Email'),
              ),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: inputDecorationfunc('Phone Number'),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: inputDecorationfunc('Password'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2D96FF),
                  foregroundColor: Color(0xFFffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.5),
                  ),
                  fixedSize: Size(double.maxFinite, 45),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => BeginScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: Text(
                  'Sign Up',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have an account?',
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFF2D96FF),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ));
                    },
                    child: Text(
                      'Login',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecorationfunc(String hinttext) {
    return InputDecoration(
      hintText: hinttext,
      labelStyle: TextStyle(
        color: Color(0xFFB3B3B3),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF2D96FF), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF2D96FF),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
