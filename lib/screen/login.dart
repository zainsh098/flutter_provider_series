import 'package:flutter/material.dart';
import 'package:flutter_provider_series/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();





  @override
  Widget build(BuildContext context) {

final authProvider=Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _email,
              decoration: InputDecoration(

                enabled: true,
                hintText: 'Email ',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _password,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'Password ',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: GestureDetector(
              onTap: () {


authProvider.login(_email.text.toString(), _password.text.toString());

              },

              child: Container(
                height: 50,

                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),


                ),
                child: Center(child: authProvider.loading ? CircularProgressIndicator() : Text('Login')),


              ),
            ),
          ),


        ],
      ),
    );
  }
}
