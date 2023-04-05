import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gold_loan/views/login_page.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              bottom: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 27,
                            color: Colors.white24,
                          )))
                ],
                title: Column(
                  children: const [
                    Text(
                      "Welcome...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 27),
                    ),
                    Text("Let's complete the registration",
                        style: TextStyle(
                            color: Color.fromARGB(255, 50, 48, 48),
                            fontSize: 17)),
                  ],
                ),
                centerTitle: true,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 133, 227, 221),
            body: Container(
              height: height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/bg/primaryBg.png",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 40, right: 30),
                    child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60))),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          FontAwesomeIcons.mobile,
                                          color:
                                              Color.fromARGB(255, 50, 48, 48),
                                        ),
                                        hintText: "Mobile Number",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color:
                                                Color.fromARGB(255, 50, 48, 48),
                                          ),
                                          hintText: "FullName"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(15),
                                          prefixIcon: Icon(
                                            Icons.account_circle,
                                            color:
                                                Color.fromARGB(255, 50, 48, 48),
                                          ),
                                          hintText: "UserName"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            color:
                                                Color.fromARGB(255, 50, 48, 48),
                                          ),
                                          hintText: "E-Mail ID"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.lock_outline,
                                            color:
                                                Color.fromARGB(255, 50, 48, 48),
                                          ),
                                          hintText: "Password",
                                          suffixIcon: Icon(
                                              Icons.remove_red_eye_outlined)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.lock_outline,
                                            color:
                                                Color.fromARGB(255, 50, 48, 48),
                                          ),
                                          hintText: "Confirm Password",
                                          suffixIcon: Icon(
                                              Icons.remove_red_eye_outlined)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 16),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15))),
                                            backgroundColor:
                                                Colors.red.shade200),
                                        onPressed: () {},
                                        child: const Text(
                                          "SIGN UP",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          },
                          child: Row(
                            children: const [
                              Text("Already have an account?",
                                  style: TextStyle(color: Colors.black)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "SIGN IN",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )));
  }
}
