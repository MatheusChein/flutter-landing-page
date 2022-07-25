import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/api/api_service.dart';
import 'package:landing_page/components/custom_button.dart';
import 'package:landing_page/components/logo.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/models/login_model.dart';
import 'package:url_launcher/link.dart';
import 'package:http/http.dart' as http;

class AuthenticationForm extends StatefulWidget {
  const AuthenticationForm({Key? key}) : super(key: key);

  @override
  State<AuthenticationForm> createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  final _formKey = GlobalKey<FormState>();
  late LoginRequestModel loginRequestModel;
  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();
    loginRequestModel = LoginRequestModel(email: "", password: "");
  }

  // void fetchData(String email, String password) async {
  //   Uri url = Uri.parse('http://localhost:3000/api/login');
  //   http.Response response = await http.post(url, body: {
  //     'email': email,
  //     'password': password,
  //   });

  //   String data = response.body;

  //   var body = jsonDecode(data);

  //   print(data);
  //   print(response.statusCode);
  // }

  bool isHoveringRichText = false;
  bool isLogin = true;
  bool isLoading = false;
  String name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Logo(),
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
          const SizedBox(height: 30),
          !isLogin
              ? TextFormField(
                  onSaved: (String? value) {
                    name = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'John Doe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              : Container(),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            onSaved: (input) => loginRequestModel.email = input!,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'johndoe@email.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            onSaved: (input) => loginRequestModel.password = input!,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '123',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: primaryColor,
                  )
                : Column(
                    children: [
                      Link(
                        uri: Uri.parse('http://localhost:56793/#/'),
                        target: LinkTarget.blank,
                        builder: (context, followLink) => CustomButton(
                          label: isLogin ? 'Login' : 'Create account',
                          // onTap: followLink,
                          onTap: () async {
                            // followLink;
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState?.save();
                              // print(loginRequestModel.toJson());
                              APIService apiService = APIService();
                              apiService.login(loginRequestModel).then(
                                (value) {
                                  if (value != null) {
                                    print(value);

                                    // if (value.token.isNotEmpty) {
                                    //   final snackBar = SnackBar(
                                    //       content: Text("Login Successful"));
                                    //   scaffoldKey.currentState
                                    //       .showSnackBar(snackBar);
                                    // } else {
                                    //   final snackBar =
                                    //       SnackBar(content: Text(value.error));
                                    //   scaffoldKey.currentState
                                    //       .showSnackBar(snackBar);
                                    // }
                                  }
                                },
                              );
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        mouseCursor: SystemMouseCursors.click,
                        onTap: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        onHover: (value) {
                          setState(() {
                            isHoveringRichText = value;
                          });
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              decoration: isHoveringRichText
                                  ? TextDecoration.underline
                                  : null,
                            ),
                            children: [
                              TextSpan(
                                text: isLogin
                                    ? 'Don\'t have an account? '
                                    : 'Already have an account? ',
                              ),
                              TextSpan(
                                text: isLogin ? 'Create one' : 'Log in',
                                style: const TextStyle(color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
