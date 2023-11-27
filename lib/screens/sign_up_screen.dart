import 'package:commercex_ecommerce_app/widgets/custom_button_widget.dart';
import 'package:commercex_ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back, color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign up",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "Please enter your information below to sign up",
                style: TextStyle(fontSize: 12.0),
              ),
              const SizedBox(height: 15.0),
              Center(
                  child: Image.asset("assets/images/splash_screen_image.png")),
              const SizedBox(height: 15.0),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  const CustomTextFormField(hintText: 'Please Enter your name'),
                  const SizedBox(height: 15.0),
                  Text("Email", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  const CustomTextFormField(
                      hintText: 'Please Enter your email'),
                  const SizedBox(height: 15.0),
                  Text("Password", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 10.0),
                  const CustomTextFormField(
                      hintText: 'Please enter your password'),
                  const SizedBox(height: 25.0),
                  const CustomButtonWidget(buttonText: 'Sign up'),
                ],
              )),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[700], fontSize: 17.0),
                  ),
                  const SizedBox(width: 3.0),
                  const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent, fontSize: 15.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
