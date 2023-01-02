import 'package:flutter/material.dart';
//import 'package:email_validator/email_validator.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/foodhd.jpg"),
              fit: BoxFit.cover,
              opacity: 100)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Welcome to Food App!!",
          ),
          backgroundColor: Colors.lightGreenAccent,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.lock,
                  size: 50,
                  color: Colors.green,
                ),
                const SizedBox(height: 30),
                const Text('Login Page',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                const SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child:TextFormField(
                     obscureText: false,
                     decoration: const InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Username",
                       fillColor: Colors.white,
                       filled: true,
                     ),
                     autovalidateMode:
                     AutovalidateMode.onUserInteraction,
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Enter username';
                       }
                       return null;
                     },
                   ),
                 ),
                const SizedBox(height: 10),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 25),
                  child:TextFormField(
                    obscureText: true,
                    //style: TextStyle(backgroundColor: Colors.lightGreenAccent),
                    decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    autovalidateMode:
                    AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      } else if (value.length < 6) {
                        return "Enter minimum six characters";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed:(){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreenAccent,
                          foregroundColor: Colors.black,
                        ),
                        child: const Text("Sign In"),
                      )),
                ),
                const SizedBox(height: 10),
                const Text(
                  "-----------Or continue with-----------",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Image.asset(
                        'assets/images/goog.jpg',
                        height: 70,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(
                        'assets/images/ig.png',
                        height: 70,
                      ),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: RichText(
                    text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'To create a new account.',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextSpan(
                        text: 'Click here',
                        style: TextStyle(
                            decoration: TextDecoration.underline, decorationThickness: 3, fontSize: 16),
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
