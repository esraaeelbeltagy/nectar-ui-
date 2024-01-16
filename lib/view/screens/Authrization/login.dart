import 'package:flutter/material.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Authrization/sign_up.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';
import 'package:grocery/view_model/utils/assets.dart';
import 'package:grocery/view_model/utils/colors.dart';
import 'package:grocery/view_model/utils/navigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppAssets.mask,
                ),
                fit: BoxFit.fitHeight),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    Center(
                      child: Image.asset(
                        AppAssets.carrot,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      textAlign: TextAlign.start,
                      'Loging',
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
                      'Enter your emails and password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
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

                        //eye icon if passenable = true, else, Icon is ***__
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextFormField(
                      obscureText: !_passwordVisible,
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
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textAlign: TextAlign.end,
                          'Forget password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        text: 'Login',
                        color: AppColor.green,
                        textColor: const Color.fromRGBO(255, 255, 255, 1),
                        clickCallback: () {
                          if (formKey.currentState!.validate()) {
                            Navigation.pushAndRemove(context, BottomNavBar());
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account? ',
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
                            'Singup',
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                        Navigation.pushAndRemove(context, const SignUp());
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
