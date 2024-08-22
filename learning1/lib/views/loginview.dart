import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learning1/firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: const Color.fromARGB(255, 37, 181,
              192), //App Bar background color.                  ),
        ),
        body: FutureBuilder(
          future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return Column(children: [
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: false,
                    decoration:
                        const InputDecoration(hintText: "Enter your email"),
                  ),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration:
                        const InputDecoration(hintText: "Enter your password"),
                  ),
                  TextButton(
                      onPressed: () async {
                        final email = _email.text;
                        final password = _password.text;
                        try {
                          final credentials = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email, password: password);
                          print(credentials);
                        } on FirebaseAuthException catch (e) {
                          print("ERROR Code");
                          print(e.code);
                          if (e.code == 'invalid-credential') {
                            print(
                                "The user does not exist or password is incorrect");
                          } else {
                            print(e.code);
                          }
                        } catch (e) {
                          print("SOMETHING BAD HAPPENED");
                          print(e);
                          print(e.runtimeType);
                        }
                      },
                      child: const Text("Login")),
                ]);
              default:
                return const Text("Loading . . .");
            }
          },
        ));
  }
}
