import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_shoe_store/screens/begin_screen.dart';
import 'package:nike_shoe_store/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool textStatus = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'welcome back nike store',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  label: Text('Phone Number'),
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
                ),
              ),
              TextField(
                obscureText: textStatus,
                keyboardType: TextInputType.visiblePassword,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        textStatus = !textStatus;
                      });
                    },
                    icon: Icon(
                        textStatus ? Icons.visibility : Icons.visibility_off),
                  ),
                  label: Text('Password'),
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
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFF2D96FF),
                ),
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                ),
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
                  'Login',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account?!',
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
                      'create account',
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
}
