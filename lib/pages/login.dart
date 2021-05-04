import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TapGestureRecognizer _changesign;
  bool showsignin = true;
  @override
  void initState() {
    // TODO: implement initState
    _changesign = new TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
          print(showsignin);
        });
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              bottom: 730,
              right: 370,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
            Positioned(
                left: 430,
                top: 80,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.deepPurple[400],
                  ),
                )),
            Positioned(
                left: 140,
                top: 150,
                child: Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.only(top: 190),
              child: Image.asset('images/log.jpg'),
            ),
            Container(
                width: 350,
                height: 250,
                //color: Colors.red,
                margin: EdgeInsets.only(top: 450, left: 65),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.deepPurple[600],
                          ),
                          filled: true,
                          fillColor: Colors.deepPurple[100],
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurple[100]),
                              borderRadius: BorderRadius.circular(50)),
                          hintText: 'Username',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock,
                                  color: Colors.deepPurple[600]),
                              filled: true,
                              fillColor: Colors.deepPurple[100],
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple[100]),
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: 'Password')),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 25)),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepPurple[400]),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
            showsignin
                ? AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOutBack,
                    margin: EdgeInsets.only(
                      top: 784,
                    ),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130)),
                        color: Colors.grey[300]),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(
                              recognizer: _changesign,
                              text: "Don't have any account ! SignUp",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  )
                : AnimatedContainer(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOutBack,
                    margin: EdgeInsets.only(
                      top: 80,
                    ),
                    width: double.infinity,
                    height: 784,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130)),
                        color: Colors.grey[300]),
                    child: Container(
                      child: Center(
                        child: Container(
                          width: 350,
                          height: 900,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Icon(
                                      Icons.close,
                                      size: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Welcome ',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Image.asset('images/2.png'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.deepPurple[600],
                                      ),
                                      filled: true,
                                      fillColor: Colors.deepPurple[100],
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple[100]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      hintText: 'Username',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.deepPurple[600],
                                      ),
                                      filled: true,
                                      fillColor: Colors.deepPurple[100],
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple[100]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      hintText: 'Email',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.lock,
                                              color: Colors.deepPurple[600]),
                                          filled: true,
                                          fillColor: Colors.deepPurple[100],
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepPurple[100]),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          hintText: 'Password')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.lock,
                                              color: Colors.deepPurple[600]),
                                          filled: true,
                                          fillColor: Colors.deepPurple[100],
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      Colors.deepPurple[100]),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          hintText: 'Repeat-Password')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 55,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all(
                                              TextStyle(fontSize: 25)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.deepPurple[400]),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)))),
                                      onPressed: () {},
                                      child: Text('Sign Up'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: RichText(
                                      text: TextSpan(
                                          recognizer: _changesign,
                                          text: "Already have account ! SignIn",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
