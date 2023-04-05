import 'package:flutter/material.dart';
import 'package:gold_loan/views/gold_loan_main.dart';
import 'package:gold_loan/views/signuppage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            // backgroundColor: Colors.tealAccent.shade100,
            backgroundColor: const Color.fromARGB(255, 133, 227, 221),
            body: Container(
              height: height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg/primaryBg.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, right: 30),
                    child: Container(
                      height: height / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                "Welcome Back!",
                                style: TextStyle(
                                    color: Colors.black,
                                    //  fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintStyle: TextStyle(fontSize: 12),
                                      hintText: "Agent ID",
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      suffixIcon:
                                          Icon(Icons.remove_red_eye_outlined),
                                      hintText: "Password",
                                      hintStyle: TextStyle(fontSize: 12),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GoldLoanMain(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red.shade200,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ))),
                                    child: const Text("Login"),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forgot Password?",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Signup(),
                                          ));
                                    },
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Create an Account?",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Sign up",
                                          style: TextStyle(
                                              color: Colors.red.shade200,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
