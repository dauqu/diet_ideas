import 'package:diet_ideas/pages/forgot_password.dart';
import 'package:diet_ideas/pages/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F46B3),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: Placeholder(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Create an Account",
                    style: TextStyle(
                        color: Color(0xFF40D4AF),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                const Text("Sign up now to get started with an account.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Full Name",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Password",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Date of Birth*",
                                  style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                child: TextField(
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Age*",
                                  style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Contact Number",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("State*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Reason for Signing Up*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                       const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("How did you find out about Diet Ideas?*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                       const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Email Address*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                       const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Password*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                       const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Confirm Password*",
                          style: TextStyle(
                              color: Color(0xFFCCCCCC),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                       const TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                                const Color(0xFF40D4AF)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: true,
                            onChanged: null,
                          ),
                          const Text("Remember me",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //goto forgot password page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: const Text("Forgot Password?",
                            style: TextStyle(
                                color: Color(0xFF40D4AF),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF40D4AF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Color(0xFF0F46B3),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Don't have an account? Sign Up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                    TextButton(
                      onPressed: () {
                        //goto sign up page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text("Sign In",
                          style: TextStyle(
                              color: Color(0xFF40D4AF),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
