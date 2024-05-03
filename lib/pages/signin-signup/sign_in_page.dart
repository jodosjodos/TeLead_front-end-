import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te_lead/pages/fill_profile.dart';
import 'package:te_lead/pages/signin-signup/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool hidden = true;
  bool? selected = false;
  void togglePasswordState() {
    setState(() {
      hidden = !hidden;
    });
  }

  @override
  void initState() {
    super.initState();
    hidden = !hidden;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/images/smallLogo.png")),
                Text(
                  "Let’s Sign In.!",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Login to Your Account to Continue your Courses",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: Theme.of(context).textTheme.titleSmall,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: hidden,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: Theme.of(context).textTheme.titleSmall,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: IconButton(
                      onPressed: togglePasswordState,
                      icon: hidden
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: selected,
                          onChanged: (value) {
                            setState(
                              () {
                                selected = value;
                              },
                            );
                          },
                        ),
                        Text(
                          "Remember Me",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FillProfile(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Theme.of(context).colorScheme.primary,
                          size: 45,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    " Or Continue With ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/google2.svg"),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset("assets/images/apple2.svg"),
                  ],
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have account yet ? ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        TextSpan(
                          text: "SIGN UP",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Theme.of(context).colorScheme.primary,
                                decorationThickness: 4,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                        ),
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
