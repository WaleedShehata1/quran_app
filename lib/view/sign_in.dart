import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/constant.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:quran_app/view/home.dart';

import '../text_Form_Field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  static const String routeName = 'Sign in';
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              padding: const EdgeInsetsDirectional.all(10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/image/mosque 1.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 340,
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(40),
              color: background.withOpacity(0.7),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Quran App',
                      style: TextStyle(
                          color: color1,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Asalamu Alaikum !!!',
                      style: TextStyle(
                          color: color2,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        const Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: color2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(14),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          label: 'email',
                          textColor: color1,
                          keyboardType: TextInputType.number,
                          validate: (String? value) {
                            if (value!.trim().isEmpty) {
                              return 'Please enter your National ID';
                            } else if (value.length < 14) {
                              return 'Enter the national number consisting of 14 digits';
                            }
                            return null;
                          },
                          controller: emailController,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        DefaultFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(14),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          label: 'Password',
                          textColor: color1,
                          keyboardType: TextInputType.number,
                          validate: (String? value) {
                            if (value!.trim().isEmpty) {
                              return 'Please enter your National ID';
                            } else if (value.length < 14) {
                              return 'Enter the national number consisting of 14 digits';
                            }
                            return null;
                          },
                          controller: passwordController,
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: color1,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 65,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color3),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.routeName);
                            },
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            child: const Center(
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: color1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(fontSize: 13, color: color1),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  MaterialCommunityIcons.google,
                                  color: color1,
                                  size: 30,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.facebook,
                                    color: color1,
                                    size: 32,
                                  )),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.apple,
                                  color: color1,
                                  size: 35,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don’t have an account ?",
                              style: TextStyle(fontSize: 12, color: color1),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Register here',
                                    style:
                                        TextStyle(fontSize: 12, color: color4)))
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
