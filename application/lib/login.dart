import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    // final emailField = TextFormField(
    //   autofocus: false,
    //   controller: emailController,
    //   keyboardType: TextInputType.emailAddress,
    //   onSaved: (value) {
    //     emailController.text = value!;
    //   },
    //   textInputAction: TextInputAction
    //       .next, //this will add the the next button to the right of keyboard
    // );
    // // password field
    // final passwordField = TextFormField(
    //   autofocus: false,
    //   controller: passwordController,
    //   onSaved: (value) {
    //     emailController.text = value!;
    //   },
    //   textInputAction: TextInputAction
    //       .done, //this will add the the done button to the right of keyboard
    // );
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 140, left: 130),
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.black, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 38),
                          child: Text("Dont Have an Account?")),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15),
                          )),
                    ],
                  ),
                  Container(
                    child: FlatButton(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
