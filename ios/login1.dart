import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:projuct_2/home.dart';

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage 2"),
      ),
      body: Form(
        key: formkey, // this key is used to fetch the current state of form
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Username"),
                validator: (username) {
                  if (username!.isEmpty || !username.contains('@')) {
                    return 'field is empty/Invalid';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0,left: 18,right: 18),
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'field is empty / invalid length';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Password"),
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context) => Home()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=>Home()));
                }, child: const Text("Not a User!!! Register Here!!"))
          ],
        ),
      ),
    );
  }
}