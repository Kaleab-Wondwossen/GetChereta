import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:getchereta/provider/themes.dart';
import 'package:getchereta/screens/home_screen.dart';
import 'package:getchereta/screens/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/password_visiblity.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? ontap;
  const LoginScreen({super.key, this.ontap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(
      context,
    );
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
                      SizedBox(
                        height: AppSizes.largeGap * .9,
                      ),
                      // Replace with your logo
                      Image.asset(
                        'images/chereta1.png', // Replace with your logo asset path or network path
                        height: AppSizes.largeGap * 5,
                        width: AppSizes.largeGap * 5,
                      ),
                      SizedBox(height: AppSizes.mediumGap),
                      Text(
                        'GetChereta',
                        style: GoogleFonts.acme(
                          fontSize: AppSizes.secondaryFontSize * 2,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(56, 103, 93, 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
                // Login Section
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: themeNotifier.isDarkMode
                        ? const Color.fromARGB(255, 52, 52, 52)
                        : const Color.fromARGB(255, 216, 216, 216),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.mediumGap),
                      topRight: Radius.circular(AppSizes.mediumGap),
                      bottomLeft:
                          const Radius.circular(0), // Sharp bottom-left corner
                      bottomRight:
                          const Radius.circular(0), // Sharp bottom-right corner
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.mediumGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Login Title
                        Center(
                          child: Text(
                            'Login',
                            style: GoogleFonts.acme(
                                fontSize: AppSizes.primaryFontSize * 1.3,
                                fontWeight: FontWeight.bold,
                                color: themeNotifier.isDarkMode
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        SizedBox(height: AppSizes.mediumGap * 2),
                        // Username or Email TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Username or Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSizes.mediumGap * .7),
                            ),
                            filled: true,
                            fillColor: themeNotifier.isDarkMode
                                    ? Colors.black
                                    : Colors.white,
                          ),
                        ),
                        SizedBox(height: AppSizes.mediumGap),
                        // Password TextField
                        Consumer<PasswordVisibilityProvider>(
                          builder: (context, provider, child) {
                            return TextField(
                              obscureText: !provider.isPasswordVisible,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppSizes.mediumGap * .7),
                                ),
                                filled: true,
                                fillColor: themeNotifier.isDarkMode
                                    ? Colors.black
                                    : Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    provider.isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color:
                                        const Color.fromRGBO(56, 103, 93, 1.0),
                                  ),
                                  onPressed: provider.togglePasswordVisibility,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: AppSizes.mediumGap),
                        // Forgot Password Text
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                  color: const Color.fromRGBO(56, 103, 93, 1.0),
                                  fontSize: AppSizes.tertiaryFontSize),
                            ),
                          ),
                        ),
                        SizedBox(height: AppSizes.smallGap),
                        // Login Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(56, 103, 93, 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppSizes.secondaryFontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: AppSizes.mediumGap),
                        // Sign Up Section
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                    fontSize: AppSizes.tertiaryFontSize),
                              ),
                              GestureDetector(
                                // onTap: widget.ontap,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpScreen()));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(
                                          56, 103, 93, 1.0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppSizes.tertiaryFontSize),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.mediumGap * 1.35,
                        )
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
