  import 'package:flutter/material.dart';
  import 'tela_inicio.dart';
  void main() {
    runApp(LoginApp());
  }

  class LoginApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      );
        
    }
  }

  class LoginPage extends StatelessWidget {
    @override
  /*************  ✨ Codeium Command ⭐  *************/
    /// Builds the login page with a form and a button to login.
    ///
    /// The form contains two text fields: one for the email and one for the
    /// password. The button is labeled "Login" and executes the user authentication
    /// logic when pressed.
    ///
    /// The form is padded on all sides with 16.0 logical pixels, and the fields
  /******  9ef45fc7-dcb9-43fd-80fa-2d5b3b96f8d3  *******/  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,

          ),
          ),
          backgroundColor: Colors.blue,
          elevation: 4,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'lib/assets/login.png',
                width: 550,
                height: 450,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ) 
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha',
                prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoApp()),
                  );
                  // Lógica de autenticação do usuário
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      );
    }
  }