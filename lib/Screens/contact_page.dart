
// import 'dart:html';
import 'dart:ui';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';

class ContactPage extends StatefulWidget{

  @override
  _ContactPageState  createState() => _ContactPageState();

}

class _ContactPageState extends State<ContactPage>{

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      backgroundColor: mcolorblue2,

      bottomNavigationBar: BottomnavigationTYP(),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: mcolorwhite),

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 10,top: 10),
                          child:const Text(
                            'Contact...',
                            style: TextStyle(
                              color: mcolorblue2,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 10,top: 10),
                          child:const Text(
                            'Write us a message',
                            style: TextStyle(
                              color: mcolorblue2,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(  Radius.circular(24),
                            ),
                          ),
                          margin: EdgeInsets.all(10),
                          child:Form(
                            key: _formKey,

                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: TextFormField(
                                      decoration:   InputDecoration(
                                          // border: InputBorder.none,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(30.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: mcolorwhite,
                                        contentPadding: const EdgeInsets.only(
                                            left: 14.0, bottom: 6.0, top: 8.0),

                                          labelText: 'Name',
                                          labelStyle: TextStyle(
                                              color:  Colors.blue,
                                              fontWeight: FontWeight.bold
                                          ),
                                          alignLabelWithHint: true,

                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: mcolorwhite),
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),

                                      ),

                                      controller: nameController,
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Name is required !';
                                        }
                                        return null;
                                      }
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: TextFormField(
                                      decoration:  InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: mcolorwhite,
                                        contentPadding: const EdgeInsets.only(
                                            left: 14.0, bottom: 6.0, top: 8.0),
                                        labelText: 'Email',
                                        labelStyle: TextStyle(
                                            color:  Colors.blue,
                                            fontWeight: FontWeight.bold
                                        ),
                                        alignLabelWithHint: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: mcolorwhite),
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),




                                      ),
                                      controller: emailController,
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Email is required !';
                                        }else if(!EmailValidator.validate(value)){
                                          return 'Invalid Email !';
                                        }
                                        return null;
                                      }
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: TextFormField(
                                      decoration:  InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: mcolorwhite,
                                        contentPadding: const EdgeInsets.only(
                                            left: 14.0, bottom: 6.0, top: 8.0),
                                        labelText: 'Message',
                                        labelStyle: TextStyle(
                                            color:  Colors.blue,
                                            fontWeight: FontWeight.bold
                                        ),
                                        alignLabelWithHint: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: mcolorwhite),
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),

                                      ),
                                      controller: messageController,
                                      minLines: 10, // any number you need (It works as the rows for the textarea)
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,

                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Message is required !';
                                        }
                                        return null;
                                      }
                                  ),
                                ),


                                const SizedBox(height: 20 ),
                                Container(
                                  width: 150,
                                    padding: EdgeInsets.only(bottom: 10),
                                  child:ElevatedButton(

                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(mcolorblue2),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),

                                          )
                                      ),


                                    ),
                                    onPressed: () async {
                                      // Validate returns true if the form is valid, or false otherwise.
                                      if (_formKey.currentState!.validate()) {



                                        final Email email = Email(
                                          body:messageController.text,
                                          subject: 'Contact By' +nameController.text,
                                          recipients: ['info@trainyourplane.com.au'],
                                          // cc: ['cc@example.com'],
                                          // bcc: ['bcc@example.com'],
                                          // attachmentPaths: ['/path/to/attachment.zip'],
                                          isHTML: false,
                                        );

                                        await FlutterEmailSender.send(email);
                                      }
                                    },
                                    child: const Text('Submit'),
                                  ),
                                )







                              ],
                            ),






                            /* Container(
                  padding: EdgeInsets.only(left: 10,right: 10),

                ),*/


                          ),
                        )
                      ],
                    ),
                  )),







            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    messageController.dispose();
  }

  // Widget _nameField(){
  //   return TextFormField()
  //
  // }

}