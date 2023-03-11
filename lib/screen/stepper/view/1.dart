import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  home_provider? h1;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtDob = TextEditingController();
  TextEditingController txtGender = TextEditingController();
  TextEditingController txtLocation = TextEditingController();
  TextEditingController txtNationality = TextEditingController();
  TextEditingController txtReligion = TextEditingController();
  TextEditingController txtLanguage = TextEditingController();
  TextEditingController txtBiography = TextEditingController();

  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<home_provider>(context);
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: NewGradientAppBar(
          title: Text('Edit Your Profile'),
          leading: Icon(Icons.arrow_back),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent,
              Colors.greenAccent,
              Colors.green.shade300
            ],
          ),
        ),
        body: Stepper(
          steps: [
            Step(
              title: const Text(
                "Profile Picture",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.black,
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 130,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Enter a Name ',
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Phone ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtPhone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Enter a Phone number ',
                      labelText: "Phone",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Email ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Container(
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: txtEmail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Enter your Email ',
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black, width: 2.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Step(
              title: Text(
                "DOB",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your DOB ',
                      labelText: "DOB",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtGender,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Gender ',
                      labelText: "Gender",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Current Loacation",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Location ',
                      labelText: "Location",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Nationalities",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Nationalities ',
                      labelText: "Nationalities",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Raligion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Raligion ',
                      labelText: "Raligion",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Language(s)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Language ',
                      labelText: "Language",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Biography",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [ SizedBox(
                  height: 5,
                ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),),
                      hintText: 'Enter your Biography ',
                      labelText: "Biography",
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Done",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Your Profile success  \n congratulations 🎉",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),



                ],
              ),
            ),
          ],
          currentStep: Provider.of<home_provider>(context, listen: false).i,
          onStepContinue: () {
            if (Provider.of<home_provider>(context, listen: false).i < 11) {
              Provider.of<home_provider>(context, listen: false).continu_step();
            }
          },
          onStepCancel: () {
            if (Provider.of<home_provider>(context, listen: false).i > 0) {
              Provider.of<home_provider>(context, listen: false).back_step();
            }
          },
        ),
      ),
    );
  }
}
