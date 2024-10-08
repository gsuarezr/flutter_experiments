import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        controller: _email,
        keyboardType: TextInputType.emailAddress,
        enableSuggestions: false,
        decoration: const InputDecoration(hintText: "Enter your email"),
      ),
      TextField(
        controller: _password,
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        decoration: const InputDecoration(hintText: "Enter your password"),
      ),
      TextButton(
          onPressed: () async {
            final email = _email.text;
            final password = _password.text;
            try {
              final credentials = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: email, password: password);
              print(credentials);
            } on FirebaseAuthException catch (e) {
              print(e.code);
              if (e.code == "weak-password") {
                print("The password is too weak");
              } else if (e.code == "email-already-in-use") {
                print("There's already an account with that email");
              } else if (e.code == "invalid-email") {
                print("Invalid email entered");
              }
            }
          },
          child: const Text("Register")),
    ]);
  }
}
