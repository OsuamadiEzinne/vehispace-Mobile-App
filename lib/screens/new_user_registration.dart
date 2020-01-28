import 'package:flutter/material.dart';

import '../widgets/customraisedbutton.dart';
import '../widgets/customtextformfield.dart';
import '../widgets/customdropdown.dart';

class MyNewUserRegistration extends StatefulWidget {
  @override
  _MyNewUserRegistrationState createState() => _MyNewUserRegistrationState();
}

class _MyNewUserRegistrationState extends State<MyNewUserRegistration> {
  List<String> country = ['Nigeria', 'Ghana', 'Niger'];
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String dvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formkey,
              child: SizedBox(
                height: 20,
              ),
            ),
//            CustomTextField(
//              hint: 'Surname',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.person),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Middle Name | Optional',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.person),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Last Name',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.person),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Phone Number',
//              onSaved: (val) {},
//              keyboardType: TextInputType.phone,
//              validator: (val) {},
//              icon: Icon(Icons.phone),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Address',
////              maxLines: 3,
////              maxLength: 100,
//              onSaved: (val) {},
//              keyboardType: TextInputType.multiline,
//              validator: (val) {},
//              icon: Icon(Icons.home),
//            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Email Address',
              onSaved: (val) {},
              keyboardType: TextInputType.emailAddress,
              validator: (val) {
                return val.isEmpty ? 'Email is required' : null;
              },
//              icon: Icon(Icons.mail),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Password',
              onSaved: (val) {},
              keyboardType: TextInputType.visiblePassword,
              validator: (val) {
                return val.isEmpty ? 'Password is required' : null;
              },
//              icon: Icon(Icons.mail),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Confirm Password',
              onSaved: (val) {},
              keyboardType: TextInputType.visiblePassword,
              validator: (val) {
                return val.isEmpty ? 'Password is required' : null;
              },
//              icon: Icon(Icons.mail),
            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomDropdown(
//              value: dvalue,
//              onChnaged: (val) {
//                setState(() {
//                  dvalue = val;
//                  print(val);
//                });
//              },
//              items: country,
//              icon: Icon(Icons.flag),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'State/Region/Municipality',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.flag),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Vehicle Make',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.drive_eta),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Registration Number',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.receipt),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Engine Number',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.confirmation_number),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            CustomTextField(
//              hint: 'Engine Capacity',
//              onSaved: (val) {},
//              keyboardType: TextInputType.text,
//              validator: (val) {},
//              icon: Icon(Icons.power),
//            ),
            SizedBox(
              height: 20,
            ),
            CustomRaisedButton(
                onPressed: () {
                  if(!_formkey.currentState.validate()){
                    return;
                  }
                  _formkey.currentState.save();
                },
                text: 'Next',
                color: Colors.blue,
                textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
