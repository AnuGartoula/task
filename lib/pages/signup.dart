import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/pages/users.dart';

//toast message when the email already exist
class Utils {
  void toastMessage(String message) {
    Fluttertoast.showToast(msg: message.toString());
  }
}

class UserSignUp extends StatefulWidget {
  static const String id = 'UserSignUp';
  // final String title;
  // final TextButton({key? key , required this.title }),
  final VoidCallback onTap;
  final bool loading; //progress loading

  const UserSignUp({super.key, required this.onTap, this.loading = false});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  bool loading = false; // intially loading is false
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance; // firebase authentication
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[100],
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.deepPurple[900],
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
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

              Container(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmpasswordController,
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: "Confirm Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please confirm password";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[500],
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        auth //firebase auth to create user with email and password
                            .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())
                            .then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserLogin(),
                              ));
                          setState(() {
                            loading = false;
                          });
                        }).onError(
                          (error, stackTrace) {
                            setState(() {
                              loading = false;
                            });
                            Utils().toastMessage(error
                                .toString()); // shows email already exist toast message
                          },
                        );
                        // print(emailController);
                      }
                    },
                    child: loading
                        ? const CircularProgressIndicator(
                            //shows the loading bar
                            color: Colors.white,
                            strokeWidth: 6,
                          )
                        : const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserLogin(),
                          ));
                    },
                    child: const Text(
                      "Login",
                    )),
              ])
            ],
          ),
        ));
  }
}
