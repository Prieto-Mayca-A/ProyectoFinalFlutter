import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox( height: 30,),
            Image.asset('images/tecfood.jpg'),
          Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('Siguiente'),
                      onPressed: () {
                         Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => TECFOOD()),
                        );
                      },
                    )),  
          ],
        ),
      ),
    );
  }
}

class TECFOOD extends StatelessWidget  {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avance del Proyecto de Flutter'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset('images/tecfood.jpg'),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.orange,
                  child: Text('Olvidaste tu contraseña'),
                ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text('Ingresar'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                         Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => SecondRoute()),
                        );
                      },
                    )),  
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login con Facebook'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                      },
                    )),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Login con Google'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => FourdRoute()),
                        );  
                      },
                    )),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Login con Nro. de telefono'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => FiveRoute()),
                        );
                      },
                    )),                 
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('No tienes una cuenta?'),
                      FlatButton(
                        textColor: Colors.orange,
                        child: Text(
                          'Registrate',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                )), 
              ],
            )));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),  
        backgroundColor: Colors.orange,
      ),
      drawer: MenuLateral(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Pagina principal '),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Login con facebook proximamente'),
        ),
      ),
    );
  }
}

class FourdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Login con Google proximamente'),
        ),
      ),
    );
  }
}

class FiveRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TECFOOD"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Login con Nro. de telefono proximamente'),
        ),
      ),
    );
  }
}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: Text("TECFOOD"),
              accountEmail: Text("tecfood@gmail.com"),
              
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/0c/47/c1/56/plaza-de-armas-arequipa.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Ink(
            color: Colors.grey,
            child: new ListTile(
              title: Text("OPCIONES DISPONIBLES:", style: TextStyle(color: Colors.white),),
            ),
          ),
          new ListTile(
            title: Text("PRUEBA 1"),
            onTap: (){},
          ),
          new ListTile(
            title: Text("PRUEBA 2"),
          ),
          new ListTile(
            title: Text("PRUEBA 3"),
          )

                 ],
      ) ,
    );
  }
}