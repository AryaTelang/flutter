import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/regis.jpg"),
              fit: BoxFit.cover,
              opacity: 100)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Register Here",
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
                  Icons.face,
                  size: 50,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                const Text('Register',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                const SizedBox(height: 10),

                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child:TextFormField(
                          obscureText: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email Address",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          validator: (email) {
                            if (email != null &&
                                !EmailValidator.validate(email)) {
                              return 'Please enter a Valid Email';
                            }
                            return null;
                          },
                        ),
                      ),

                const SizedBox(height: 10),

                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          obscureText: true,
                          //style: TextStyle(backgroundColor: Colors.lightGreenAccent),
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter password",
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

                const SizedBox(height: 10),
                Container(
                      padding:const EdgeInsets.symmetric(horizontal: 25),
                      child:TextFormField(
                        obscureText: true,
                        //style: TextStyle(backgroundColor: Colors.lightGreenAccent),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "phone number",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please your phone number';
                          } else if (value.length !=10) {
                            return "Invalid";
                          }
                          return null;
                        },
                      ),
                ),
                const SizedBox(height: 5),
                Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: const Text(
                              "Agree to terms and conditions?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),

                          ),
                        ),
                        Checkbox(
                            value: isChecked,
                            activeColor: Colors.indigoAccent,
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool;
                              });
                            }),
                      ],
                ),
                Center(
                      child: SizedBox(
                          height: 30,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreenAccent,
                              foregroundColor: Colors.black,
                            ),
                            child: const Text("Submit"),
                          )),
                ),

                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
