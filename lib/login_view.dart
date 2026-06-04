import 'package:course_app/home_page.dart';
import 'package:course_app/register_view.dart';
import 'package:course_app/login_cubit/login_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailconroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        email: emailconroller.text,
        password: passwordcontroller.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginCubitState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const homePage()),
            );
          }

          if (state is LoginFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();

          return Scaffold(
            appBar: AppBar(
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            body: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/blueIcon.png',
                          width: 80,
                          height: 80,
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "We're so glad to see you again. Let's get you back on track.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 127, 113, 113),
                          ),
                        ),

                        SizedBox(height: 30),

                        Text(
                          "Email Address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        TextFormField(
                          controller: emailconroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "invalid email";
                            }

                            if (!value.contains('@')) {
                              return "invalid email, missing @";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "e.g. hello@example.com",
                          ),
                        ),

                        Text(
                          "Use the email you registerd with.",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                            SizedBox(width: 90),

                            TextButton(
                              onPressed: () {},
                              child: Text("Forget Your Password?"),
                            ),
                          ],
                        ),

                        TextFormField(
                          controller: passwordcontroller,
                          obscureText: cubit.obscureText,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "invalid password";
                            }

                            if (value.length < 8) {
                              return "invalid password, must be at least 8 characters";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            suffix: IconButton(
                              onPressed: () {
                                context
                                    .read<LoginCubit>()
                                    .changePasswordVisibility();
                              },
                              icon: Icon(
                                cubit.obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: "Enter your password",
                          ),
                        ),

                        Text(
                          "Passwords are case-sensitive.",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        btnNamae: state is LoginLoading
                            ? 'Loading...'
                            : 'Sign In',
                        btnColor: const Color.fromARGB(255, 36, 97, 163),
                        onPressed: state is LoginLoading
                            ? null
                            : () {
                                login(context);
                              },
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      SizedBox(width: 90),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RigsterView(),
                            ),
                          );
                        },
                        child: Text("Don't have an account?"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String btnNamae;
  final Color btnColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.btnNamae,
    required this.btnColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(color: btnColor),
        height: 50,
        child: Center(
          child: Text(
            btnNamae,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
