import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task/pages/homepage.dart';
import 'package:task/pages/signup.dart';

class UserLogin extends StatefulWidget {
  static const String id = 'userlogin';
  // final String title;
  // final TextButton({key? key , required this.title }),
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final confirmpasswordController = TextEditingController();

  final auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    // confirmpasswordController.dispose();
  }

  void login() {
    setState(() {
      loading = true;
    });
    //reating login function
    auth
        .signInWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Myhomepage(),
          ));
      setState(() {
        loading = false;
      });
    }) //then means what happens after signing up with email and password
        .onError(
      (error, stackTrace) {
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      },
    ); //onerror means what happens when there is error
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // RichText(
              //   text: TextSpan(children: [
              //     TextSpan(
              //       text: "Sign\n",
              //       style: TextStyle(
              //           color: Colors.deepPurple[900],
              //           fontSize: 40,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     TextSpan(
              //       text: "Up",

              //   ]),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.b,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(hintText: "Email"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter email";
                    }
                    return null;
                  },
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Container(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(hintText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Password";
                    }
                    return null;
                  },
                ),
              ),

              // Container(
              //   padding: const EdgeInsets.all(30),
              //   child: TextFormField(
              //     keyboardType: TextInputType.visiblePassword,
              //     controller: confirmpasswordController,
              //     obscureText: true,
              //     decoration:
              //         const InputDecoration(hintText: "Confirm Password"),
              //     validator: (value) {
              //       if (value!.isEmpty) {
              //         return "Please confirm password";
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[500],
                    borderRadius: BorderRadius.circular(20)),
                child: loading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            login();
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserSignUp(
                              onTap: () {},
                            ),
                          ));
                    },
                    child: const Text(
                      "Sign Up",
                    )),
              ])
            ],
          ),
        ));
  }
}
