import 'package:akartama/page/addpassanger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 114, 211, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 330,
                height: 300,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(31, 99, 170, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(1000),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 230,
                height: 280,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(28, 89, 154, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(1000),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  width: 200,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110.0, left: 30),
                child: Text(
                  "Selamat Datang di",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130.0, left: 30),
                child: Text(
                  "Travel Jaya",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "Login Akun",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(84, 84, 85, 1),
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Sign in to enjoy the best managing experience",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(100, 116, 139, 0.7),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color.fromRGBO(246, 246, 246, 1),
                              ),
                            ),
                            labelText: "Username",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color.fromRGBO(246, 246, 246, 1),
                              ),
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.blue,
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isChecked = newValue!;
                                    });
                                  },
                                  side: BorderSide(color: Colors.blue),
                                ),
                                Text(
                                  "Remember me",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromRGBO(100, 116, 139, 1),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(37, 99, 235, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(AddPassangerPage());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(21, 114, 211, 1),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
