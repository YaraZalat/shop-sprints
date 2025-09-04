import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/color.dart';
import 'package:shop_sprints/screens/auth/widget/custom_textfild.dart';
import 'package:shop_sprints/utils/validators.dart';
import '../../constants/fonts.dart';
import '../home/home_screen.dart';
import '../welcome/widget/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName="SignUpScreen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // Show success dialog
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Account created successfully"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 800),
                        pageBuilder: ( context, animation, secondaryAnimation) {
                          return FadeTransition(
                            opacity: animation,
                            child: const HomeScreen(),
                          );
                        }),
                      (Route<dynamic> route) => false,
                );
              },
              child:  Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                  child: Center(child: Text("Close",style: AppStyleFont.regularFont(),))),
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
        appBar: AppBar(title: const Text("Sign Up")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  //Create Account
                  Text("Create Account",style: AppStyleFont.titlleFont(),),
                  SizedBox(height: 10,),
                  Text("Join ShopCraft today"),
                  SizedBox(height: 50,),
                  CustomTextField(
                    controller: _nameController,
                    hint: "Full Name",
                    validator: Validator.validateName,
                  ),
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),

                  CustomTextField(
                    validator:(text) => Validator.validateConfirmPassword(text,_passwordController.text),
                    controller: _confirmController,
                    hint: "Confirm Password",
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    backgroundColor:WidgetStatePropertyAll (primaryColor),
                    text: "Sign Up",
                    style: AppStyleFont.titleButtW(),
                    onPressed: _submit,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
