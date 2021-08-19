import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String email = "", pass = "";
bool is_notvis = true;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Enjoy With this Training',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            buildTextFromFeaild(context,
                widget: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        size: 20,
                      ),
                      hintText: '****@gmail.com',
                      labelText: 'Email Address',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      border: OutlineInputBorder()),
                )),
            buildTextFromFeaild(context,
                widget: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      pass = value;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  obscureText: is_notvis,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            is_notvis = !is_notvis;
                          });
                        },
                        icon: Icon(
                          is_notvis ? Icons.visibility : Icons.visibility_off,
                          size: 20,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      hintText: 'Power password',
                      labelText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      border: OutlineInputBorder()),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              child: Card(
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    final snack = SnackBar(
                      content: Text(
                        'Login is sucssesful ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      backgroundColor: Colors.greenAccent,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snack);
                    setState(() {
                      print('the email ${email}, the password ${pass}');
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Row(
                children: [
                  Text(
                    'Dose not have an account ?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextButton(onPressed: (){}, child:
                    Text('Sign UP',style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildTextFromFeaild(
    BuildContext context, {
    required Widget widget,
  }) {
    bool is_vis = true;
    return Container(
      width: MediaQuery.of(context).size.width - 200,
      height: 55,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: widget,
      ),
    );
  }
}
