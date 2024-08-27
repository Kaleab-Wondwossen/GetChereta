import 'package:flutter/material.dart';
import 'package:getchereta/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:getchereta/measure/consts.dart';

import '../provider/password_visiblity.dart'; // Adjust the path if necessary

class SignUpScreen extends StatefulWidget {
  final void Function()? ontap;
  const SignUpScreen({super.key, this.ontap});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PasswordVisibilityProvider(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Logo Section
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //your logo
                      Image.asset(
                        'images/chereta1.png', // Replace with your logo asset path or network path
                        height: AppSizes.largeGap * 5,
                        width: AppSizes.largeGap * 5,
                      ),
                      Text(
                        'GetChereta',
                        style: GoogleFonts.acme(
                          fontSize: AppSizes.primaryFontSize,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(56, 103, 93, 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
                // Sign Up Section
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 216, 216, 216),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.mediumGap),
                      topRight: Radius.circular(AppSizes.mediumGap),
                      bottomLeft: const Radius.circular(0), // Sharp bottom-left corner
                      bottomRight: const Radius.circular(0), // Sharp bottom-right corner
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.mediumGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sign Up Title
                        Center(
                          child: Text(
                            'Create Your Account',
                            style: GoogleFonts.acme(
                              fontSize: AppSizes.primaryFontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: AppSizes.mediumGap),
                        // Full Name TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your full name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSizes.mediumGap * .7),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.person, color: Color.fromRGBO(56, 103, 93, 1.0)),
                          ),
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Email Address TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your email address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSizes.mediumGap * .7),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.email, color: Color.fromRGBO(56, 103, 93, 1.0)),
                          ),
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Phone Number TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your phone number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSizes.mediumGap * .7),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.phone, color: Color.fromRGBO(56, 103, 93, 1.0)),
                          ),
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Password TextField
                        Consumer<PasswordVisibilityProvider>(
                          builder: (context, provider, child) {
                            return TextField(
                              obscureText: !provider.isPasswordVisible,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(AppSizes.mediumGap * .7),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    provider.isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                                  ),
                                  onPressed: provider.togglePasswordVisibility,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Terms and Conditions Checkbox
                        Row(
                          children: [
                            Checkbox(
                              value: false, // Replace with state management logic
                              onChanged: (value) {},
                              activeColor: const Color.fromRGBO(56, 103, 93, 1.0),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(color: Colors.black, fontSize: AppSizes.tertiaryFontSize),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'Terms and Conditions',
                                    style: TextStyle(
                                      color: Color.fromRGBO(56, 103, 93, 1.0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Sign Up Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(56, 103, 93, 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppSizes.secondaryFontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: AppSizes.mediumGap),
                        // Sign In Section
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account? ',
                                style: TextStyle(fontSize: AppSizes.tertiaryFontSize),
                              ),
                              GestureDetector(
                                //onTap: widget.ontap,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(56, 103, 93, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSizes.tertiaryFontSize,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: AppSizes.smallGap*.3),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
