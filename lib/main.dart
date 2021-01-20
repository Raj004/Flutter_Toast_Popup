import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

bool isButtonPressed = false;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial'),
      ),
      body: Center(
        child: RaisedButton(
            color: isButtonPressed ? Colors.green : Colors.pink,
            onPressed: () =>
            {
              showAlertDialog(context)
    /*        ShowToastComponent.showDialog(
            "This is Raj", context),*/
            },
            child: Text('Raised Button'), textTheme: ButtonTextTheme.primary
        ),
      ),
    );
  }
}
class ShowToastComponent {
  static showDialog(String msg, context) {
    Toast.show(
      msg,
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.BOTTOM,
    );
  }
}


showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();

    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
