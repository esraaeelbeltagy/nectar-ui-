import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Authrization/login.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/OnBoarding/on_boarding.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 400,
              ),
              Image.asset(
                'assets/images/General/Group.png',
                width: 40,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Welcome ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'to our store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const  SizedBox(height: 5,),
              const Text(
                textAlign: TextAlign.center,
                'Ger your groceries in as fast as one hour',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
                 const  SizedBox(height: 40,),
              CustomButton(
                  text: 'Get Started',
                  color: Color(0xff53B175),
                  textColor: Colors.white,
                  clickCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
