import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    child: Image.network(
                        'https://hml.leadb2b.com.br/dist/img/logo_leadb2b_transp_high.png'),
                  ),
                  Container(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            color: Colors.blue,
                            onPressed: () {
                              if (email == '1' && password == '1') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                print('errado');
                              }
                            },
                            child: Container(
                                width: double.infinity,
                                child: Text('Entrar',
                                    textAlign: TextAlign.center)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://hml.leadb2b.com.br/dist/img/fundo.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.6)),
          _body(),
        ],
      ),
    );
  }
}
