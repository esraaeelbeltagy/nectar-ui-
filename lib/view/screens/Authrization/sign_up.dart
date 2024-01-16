import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Authrization/login.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';
import 'package:grocery/view_model/utils/colors.dart';
import 'package:grocery/view_model/utils/navigation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool passenable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/General/mask.png',
                  ),
                  fit: BoxFit.fitHeight),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/General/Carrot.png',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      textAlign: TextAlign.start,
                      'SignUp',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      textAlign: TextAlign.start,
                      'Enter your credintals to continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: userController,
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'this field is required';
                        }
                        if (data.length < 10) {
                          return 'Must be equal 10 or more than 10';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter email Here",
                        labelText: "Username",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailController,
                      validator: (data) {
                        final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                        if (data!.isEmpty) {
                          return 'this field is required';
                        }
                        if (!regex.hasMatch(data)) {
                          return 'your email is not valid';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter email Here",
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: passenable,
                      validator: (pass) {
                        final regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (pass!.isEmpty) {
                          return 'this field is required';
                        }
                        if (!regex.hasMatch(pass)) {
                          return "invalid password";
                        }

                        if (pass.length < 8) {
                          return 'your password is less than 8 character';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Password Here",
                        labelText: "Password",
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passenable) {
                                passenable = false;
                              } else {
                                passenable = true;
                              }
                            });
                          },
                          icon: Icon(
                            passenable
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const Text(
                              textAlign: TextAlign.end,
                              'By continuing you agree to our',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              ' Terms of Service',
                              style: TextStyle(
                                color: AppColor.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              textAlign: TextAlign.end,
                              'and ',
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              ' Privacy Policy.',
                              style: TextStyle(
                                color: Color(0xff53B175),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        text: 'SignUp',
                        color: const Color(0xff53B175),
                        textColor: Colors.white,
                        clickCallback: () {
                          if (formKey.currentState!.validate()) {
                            Navigation.pushAndRemove(context,  BottomNavBar());
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account',
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          child: Text(
                            textAlign: TextAlign.end,
                            'Login',
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigation.pushAndRemove(context, const Login());
                          },
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
