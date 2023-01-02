import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 150),
          child: Text(
            user.email!,
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            //const SizedBox(height:50),

            const SizedBox(
              height: 240,
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.greenAccent,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.coffee_outlined),
                iconSize: 50,
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },// add signout onPressed: FirebaseAuth.instance.signOut();
              ),
            ),
          ],
        ),
      ),
    );
  }
}
