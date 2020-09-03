import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

enum FormType { login, register }

final formKey = new GlobalKey<FormState>();
FormType _formType = FormType.login;

final FocusNode _emailNode = FocusNode();
final FocusNode _passwordNode = FocusNode();

var _email, _password;

class _LoginRegisterPageState extends State<LoginRegisterPage> {

  bool validateAndSave() {
    final form = formKey.currentState;

    if(form.validate()) {
      form.save();
      return true;
    }
    else {
      return false;
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();

    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();

    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Flutter Blog App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInputs(context) + createButtons(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> createInputs(BuildContext context) {
    return [
      SizedBox(
        height: 10.0,
      ),
      logo(),
      SizedBox(
        height: 20.0,
      ),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        focusNode: _emailNode,
        textInputAction: TextInputAction.next,
        style: TextStyle(color: Colors.white),
        validator: (value) {
          return value.isEmpty ? 'Email is required' : null;
        },
        onFieldSubmitted: (term) {
          _emailNode.unfocus();
          FocusScope.of(context).requestFocus(_passwordNode);
        },
        onSaved: (value) => _email = value,
        decoration: InputDecoration(
          labelText: 'Email',
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
          labelStyle: TextStyle(color: Colors.pink),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
        ),
        autofocus: true,
      ),
      SizedBox(
        height: 10.0,
      ),
      TextFormField(
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        obscureText: true,
        validator: (value) {
          return value.isEmpty ? 'Password is required' : null;
        },
        onSaved: (value) {
          return _password = value;
        },
        focusNode: _passwordNode,
        onFieldSubmitted: (term) {
          _passwordNode.unfocus();
        },
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Password',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          labelStyle: TextStyle(color: Colors.pink),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
    ];
  }

  Widget logo() {
    return Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 110.0,
        child: Image.asset("assets/logo_transparent.png"),
      ),
    );
  }

  List<Widget> createButtons() {
    if (_formType == FormType.login) {
      return [
        RaisedButton(
          onPressed: validateAndSave,
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20.0),
          ),
          textColor: Colors.white,
          color: Colors.pink,
        ),
        FlatButton(
          onPressed: moveToRegister,
          child: Text(
            "Don't have an account? Create Account",
            style: TextStyle(fontSize: 15.0),
          ),
          textColor: Colors.white,
        )
      ];
    }
    else {
      return [
        RaisedButton(
          onPressed: validateAndSave,
          child: Text(
            'Register',
            style: TextStyle(fontSize: 20.0),
          ),
          textColor: Colors.white,
          color: Colors.pink,
        ),
        FlatButton(
          onPressed: moveToLogin,
          child: Text(
            "Already have an account? Login",
            style: TextStyle(fontSize: 15.0),
          ),
          textColor: Colors.white,
        )
      ];
    }
  }
}


