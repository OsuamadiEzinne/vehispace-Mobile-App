import 'package:flutter/material.dart';
import '../widgets/customtextformfield.dart';
import '../widgets/customraisedbutton.dart';

class MyForgotPassword extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Password Reset',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Image(
                      image: AssetImage('assets/logo/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  CustomTextField(
                    validator: (value){
                      if (value.isEmpty){
                        return 'Please Enter Email Address';
                      }
                      return null;
                    },
//                    icon: Icon(Icons.mail),
                    hint: 'Enter Email Address',
                    onSaved: (val) {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  CustomRaisedButton(
                    onPressed: () {
                      if (!_formkey.currentState.validate()){
                        return;
                      }
                      _formkey.currentState.save();
                    },
                    text: 'Reset Password',
                    elevation: 5.0,
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
