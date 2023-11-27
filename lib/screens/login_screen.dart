import 'package:commercex_ecommerce_app/widgets/custom_button_widget.dart';
import 'package:commercex_ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "Login to your existing account",
                style: TextStyle(fontSize: 14.0),
              ),
              const SizedBox(height: 15.0),
              Center(
                  child: Image.asset("assets/images/splash_screen_image.png")),
              const SizedBox(height: 15.0),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email Address",
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 5.0),
                  const CustomTextFormField(hintText: 'e.g name@example.com'),
                  const SizedBox(height: 15.0),
                  Text("Password", style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(height: 5.0),
                  const CustomTextFormField(
                      hintText: 'e.g ********************'),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: false, onChanged: (bool? val) {}),
                          Text("Remember me",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 12.0)),
                        ],
                      ),
                      Text("Forgot Password",
                          style: TextStyle(
                              color: Colors.grey[700], fontSize: 12.0)),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const CustomButtonWidget(buttonText: 'Login'),
                ],
              )),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 5.0,
                    shape: const CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/google_icon.png'),
                                    fit: BoxFit.cover)))),
                  ),
                  const SizedBox(width: 15.0),
                  const Material(
                    elevation: 5.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.facebook),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  SizedBox(width: 3.0),
                  Text(
                    'Sign in',
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
