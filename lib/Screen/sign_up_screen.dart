import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/Screen/home_screen.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Column(
          children: [
            const Spacer(),
            Text(
              "Welcome to our community",
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Colors.pink,
              ),
            ),
            Text(
              "\nTo get start,please provide your information and create an account.\n",
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ), //เรียกMyTextFieldมา
            MyTextField(
                controller: nameController,
                hintText: "Enter your name.",
                obscureText: false, //ไม่ได้ต้องการให้เป็นความลับ
                labelText: "Name"),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: emailController,
                hintText: "Enter your Email.",
                obscureText: false,
                labelText: "Email"),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: passwordController,
                hintText: "Enter your password.",
                obscureText: true,
                labelText: "Password"),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: repasswordController,
                hintText: "Enter your password again.",
                obscureText: true,
                labelText: "Re-password"),
            const SizedBox(
                  height: 20,
                ),
            MyButton(onTap: () {}, hinText: 'Sign up'),
            const SizedBox(
                  height: 30,
                ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have a member ?",
                      style: GoogleFonts.kanit(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.kanit(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
            const Spacer(),
          ],
        )),
      ),
    );
  }
}
