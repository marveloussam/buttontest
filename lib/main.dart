import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Elevated Button',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                                  Colors.lightGreenAccent,
                ),
                shape: MaterialStateProperty.all( RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),),
                foregroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
            TextButton(
              onPressed: () {
                print('This button was pressed');
              },
              child: Text(
                'Text Button',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.green),
              ),
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
            ),

            OutlinedButton(
              onPressed: null, 
              child: Text('Outlined Button', 
                        style: TextStyle(
                          fontSize: 32,
                            color: Colors.blue),),
              style: OutlinedButton.styleFrom(primary: Colors.deepOrange, 
                                              side: BorderSide(color: Colors.deepOrange, width: 3),
                                              
                                              )
                
               ),         
             ],
          ),
        ),
      ),
    );
  }
}
