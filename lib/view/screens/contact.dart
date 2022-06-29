import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_brkkyxa";
  const templateId = "template_ierajwl";
  const userId = "_rQ5xvXhX5RjCjwC_";
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "name": nameController.text,
          "subject": subjectController.text,
          "message": messageController.text,
          "user_email": emailController.text,
        }
      }));
  return response.statusCode;
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Container(
          child: Scaffold(
              body: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 40, 25, 0),
                  child: ListView(
                    children:[Form(
                        child: Column(children: [
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.account_circle),
                          hintText: 'Name',
                          labelText: 'Name',
                        ), // InputDecoration
                      ), // TextFormField
                      SizedBox(height: 25), // SizedBox
                      TextFormField(
                        controller: subjectController,
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.subject_rounded),
                          hintText: 'Subject',
                          labelText: 'Subject',
                        ),
                      ),
                          SizedBox(height: 25,),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              icon: const Icon(Icons.email),
                              hintText: 'Email',
                              labelText: 'Email',
                            ), // InputDecoration
                          ),
                          SizedBox(height: 25,),
                          TextFormField(
                            controller: messageController,
                            decoration: const InputDecoration(
                              icon: const Icon(Icons.message),
                              hintText: 'Message',
                              labelText: 'Message',
                            ), // InputDecoration
                          ), // TextFormField
                          SizedBox(height: 25),
                          ElevatedButton(onPressed: (){
                            print("ok");
                            sendEmail();
                          }, child: Text(
                            "Send",style: TextStyle(
                            fontSize: 20
                          ),
                          ),
                          )
                    ])),
                  ]))),
        ));
  }
}
