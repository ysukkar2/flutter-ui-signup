import 'package:flutter/material.dart';
import 'signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

    
  

  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
      resizeToAvoidBottomPadding: false,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                     Container(
                      padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                      child: Text(
                        'there',
                        style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold
                        ),
                      ),
                    ),



                     Container(
                      padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold,color: Colors.green
                        ),
                      ),
                    )
                  
                  
                  

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:35.0,left:20.0,right:20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText:'EMAIL',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                      ),
                    ),

                     SizedBox(height: 20.0),
                         
                          TextField(
                      decoration: InputDecoration(
                        labelText:'PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                      ),

                       obscureText: true,

                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0,0.0),
                      padding: EdgeInsets.only(top:15.0,left:20.0),
                      child: InkWell(
                        child: Text('Forgot Password',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline
                        ),
                        
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: (){},
                          child: Center(



                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      ),
                    )

                    




                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0
                      
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: ImageIcon(AssetImage('assets/facebook.png')),
                      ),
                      SizedBox(width: 10.0),
                      Center(
                        child: Text('Log in with facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'

                        ),
                        
                        ),

                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New to Flutter ?',
                    style: TextStyle(
                      fontFamily: 'Montserrat'
                    ),
                  ),
                  SizedBox(width: 5.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text('Register',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                    
                    
                    ),
                  )
                ],
              )
            ],
          )
        );
  }
}
