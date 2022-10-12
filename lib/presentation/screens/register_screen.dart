import 'package:flutter/material.dart';
import 'package:jobbercity/constants/colors.dart';
import 'package:jobbercity/presentation/screens/login_screen.dart';
import 'package:jobbercity/presentation/widgets/custom_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: night,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              if (MediaQuery.of(context).size.height > 800)
                const SizedBox(height: 120)
              else
                const SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              TextField(
                // controller: emailController,
                style: TextStyle(height: 2, color: white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: yellow),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                // controller: emailController,
                style: TextStyle(height: 2, color: white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.alternate_email,
                    color: white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: yellow),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                // controller: emailController,
                obscureText: true,
                style: TextStyle(height: 2, color: white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: yellow),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: white),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: CustomText(
                    text: 'Register',
                    color: night,
                    size: 25,
                    weight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Already have an account?",
                      color: white,
                      size: 18,
                      weight: FontWeight.w300,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: CustomText(
                        text: "Login",
                        color: white,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
