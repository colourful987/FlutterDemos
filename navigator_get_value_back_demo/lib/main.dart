import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Return Data From Next Page',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      Text('Returning Data Demo')
    ),
    body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  Widget build(BuildContext context){
    return RaisedButton(onPressed: (){
      _navigateAndDisplaySelection(context);
    },
    child: Text('Pick an option any option!'));
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result =await Navigator.push(
      context, MaterialPageRoute(builder: (context)=>SelectionScreen()),
      );
    Scaffold.of(
      context
    )..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content:Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result
                  Navigator.pop(context, 'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Close the screen and return "Nope!" as the result
                  Navigator.pop(context, 'Nope.');
                },
                child: Text('Nope.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}