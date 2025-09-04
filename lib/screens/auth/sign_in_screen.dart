import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/fonts.dart';
import 'package:shop_sprints/screens/auth/widget/custom_textfild.dart';


import '../../constants/color.dart';
import '../../utils/validators.dart';
import '../home/home_screen.dart';
import '../welcome/widget/custom_button.dart';

class SignInScreen extends StatefulWidget {
  static String routeName="SignInScreen";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Account sign-in successfully"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 800),
                        pageBuilder: ( context, animation, secondaryAnimation) {
                          return FadeTransition(
                            opacity: animation,
                            child: HomeScreen(),
                          );
                        }),
                      (Route<dynamic> route) => false,
                );
              },
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                  child: Center(child:  Text("Close",style:AppStyleFont.regularFont(),))),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(title: const Text("Sign In")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome Back",style: AppStyleFont.titlleFont(),),
                    SizedBox(height: 10,),

                    Text("Sign in to ShopCraft"),
                    SizedBox(height: 50,),
                    CustomTextField(
                      controller: _emailController,
                      hint: "Email",
                      validator: Validator.validateEmail,
                    ),
                    SizedBox(height: 10,),

                    CustomTextField(
                      controller: _passwordController,
                      hint: "Password",
                      isPassword: true,
                      validator: Validator.validatePassword,
                    ),

                    const SizedBox(height: 20),
                    CustomButton(
                      backgroundColor: WidgetStatePropertyAll(primaryColor),
                      text: "Sign In",

                      style: AppStyleFont.titleButtW(),
                      onPressed: _submit,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
