import 'package:flutter/material.dart';

class Snackbarpage extends StatefulWidget {
  const Snackbarpage({Key? key}) : super(key: key);

  @override
  _SnackbarpageState createState() => _SnackbarpageState();
}

class _SnackbarpageState extends State<Snackbarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBAr"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text(
                    "plz Realoding",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  action: SnackBarAction(label: 'undo', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("OK"))),
    );
  }
}
