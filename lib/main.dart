import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runApp(MaterialApp(
    home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/transp.png'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                  'FAZER REGISTO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                ),
              ),
              color: Colors.black,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40.0) ,
                    onPressed: () {},
                    color: Colors.white,
                    child: Text('GOOGLE'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 35.0) ,
                    onPressed: () {},
                    color: Colors.white,
                      child: Text('FACEBOOK'
                    ),
                  ),
                ),
              ],
              ),
            SizedBox(
              height: 10.0,
            ),
            Text('Já tens uma conta?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'INICIAR SESSÃO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                ),
              ),
              color: Colors.black,
            ),
            SizedBox(
              height: 60.0,
            ),
            Text('Ao Continuar está a concordar com os Termos e Condições',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[600],
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child:Container(
                    child: BackButton(
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child:Container(
                     child: SizedBox(
                       width: 20.0,
                     ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Container(
                    padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/transp.png'),
                  ),
                ),
              ],
            ),
          SizedBox(
            height: 30.0,
          ),
          Center(
           child: CircleAvatar(
             radius: 50.0,
            child: Image.asset('assets/login.png'),
           ),
          ),
          SizedBox(
            height: 40.0,
            ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Text('Username / Email:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
            margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            child: TextField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                ),
                labelText: 'Introduzir Username',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
            child: Text('Password:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
            margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            child: TextField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                ),
                labelText: 'Introduzir Password',
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(75.0, 15.0, 0.0, 0.0),
            child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Perfil()),
              );
            },
            padding: EdgeInsets.symmetric(horizontal: 100.0),
            child: Text(
                'ENTRAR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                letterSpacing: 1.0,
              ),
            ),
            color: Colors.black,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: Text('Ao Continuar está a concordar com os Termos e Condições',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[600],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}



class RegisterScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child:Container(
                    child: BackButton(
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child:Container(
                    child: SizedBox(
                      width: 20.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Container(
                    padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/transp.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text('Username:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                  ),
                  labelText: 'Introduzir Username',
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text('E-Mail:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                  ),
                  labelText: 'Introduzir E-Mail',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
              child: Text('Password:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                  ),
                  labelText: 'Introduzir Password',
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(70.0, 15.0, 0.0, 0.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AfterLogin()),
                  );
                },
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Text(
                  'REGISTAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
            child: Text('Ao Continuar está a concordar com os Termos e Condições',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AfterLogin extends StatefulWidget{
  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child:Container(
                    child: BackButton(
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child:Container(
                    child: SizedBox(
                      width: 20.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Container(
                   // padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/transp.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Image.asset('assets/lock_locked.png',
                      scale: 10),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Cacifos disponiveis:',
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      ),

                      Container(
                        //color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 4.0)
                        ),
                        child: Text(
                          "1",
                          style: TextStyle( fontSize: 24.0,
                          ),
                        ),
                      ),
                ],

              ),

            ),
            SizedBox(
              height: 30.0,
            ),

            Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                         isVisible = !isVisible;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(width: 4.0, color: Colors.black),
                        fixedSize: const Size(400,30),
                      ),
                      child: Text("Selecionar cacifo",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        ),
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150.0,
            ),

            Visibility(
              visible: isVisible,

              child: Column(
                children: <Widget>[
                  Row(
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      height: 100.0,
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [
                        SizedBox(width: 5),
                        Image.asset('assets/unlocked_lock_r.png',
                            scale: 10),

                        SizedBox(
                          width: 10,
                        ),

                        Container(
                          color: Colors.black,
                          padding: EdgeInsets.symmetric( horizontal: 45.0, vertical: 10),
                          child: Text(
                            'O teu cacifo:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10.0,
                        ),

                        Container(
                          //color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 4.0)
                          ),
                          child: Text(
                            "#01",
                            style: TextStyle( fontSize: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CacifoDesignado()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(width: 4.0, color: Colors.black),
                      fixedSize: const Size(335,50),
                    ),
                    child: Text("Ver o código do cacifo:",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0,0),
                    decoration: new BoxDecoration(

                      color: Colors.black,
                    ),
                    child: Image.asset('assets/eye2.png',
                    scale: 8,
                    ),
                  ),

               ],
                ),
        ],
            ),

            ),
          ],
        ),
      ),
    );
  }
}

class CacifoDesignado extends StatefulWidget {
  @override
  State<CacifoDesignado> createState() => _CacifoDesignadoState();
}

class _CacifoDesignadoState extends
    State<CacifoDesignado>{
  bool isVisible = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Row(
                    children: <Widget>[
                    Expanded(
                      flex: 2,
                      child:Container(
                      child: BackButton(
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child:Container(
                      child: SizedBox(
                        width: 20.0,
                      ),
                    ),
                   ),
                   Expanded(
                    flex: 3,
                    child:Container(
                      padding: EdgeInsets.all(1.0),
                      child: Image.asset('assets/transp.png'),
                    ),
                  ),
                      SizedBox(
                        height: 20,
                      ),
                ],
              ),
                Container(
                  //padding: EdgeInsets.all(2),
                  //color: Colors.black,
                  margin: const EdgeInsets.fromLTRB(45,0,45,10),
                  padding: const EdgeInsets.fromLTRB(5,5,5,5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                      width: 1),
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                     Text(
                       'Cacifo designado: #01',
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          decorationColor: Colors.black,
                          fontSize: 30,
                        ) ,
                      ),
                  ],
                ),
              ),
            ],
          ),
            SizedBox(
              height: 30,
              width: 30,
            ),

            Container(
            color: Colors.black,
            height: 50,

              child: Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 50,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: <Widget>[

                                Container(
                                    color: Colors.white,
                                    width: 300,
                                    height: 40,
                                    child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Código: 0879',
                                       style: TextStyle(
                                        height: 1.3,
                                        fontSize: 30,
                                        wordSpacing: 10,
                                      ),
                                  ),
                                  ],
                                ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                            ],
                            ),

                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/eye.png',
                              scale: 5,
                            ),
                          ],
                        ),
                        ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                   width: 422,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Alterar o código',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 422,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Partilhar o código:',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      child: Text(
                        'E-mail'
                      ),
                    ),
                    ),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      child: Text(
                        'Facebook'
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      child: Text(
                          'Mensagem'
                      ),
                    ),
                    ),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      child: Text(
                          'WhatsApp'
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    width: 400,
                    child: RaisedButton(
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Outra conta U-Charge',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  width: 200,
                  child: RaisedButton(
              onPressed: (){},
              color: Colors.grey,
              child: Text(
                'ABRIR CACIFO',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,

                ),
              ),
            ),
                ),
            ],
            ),
              ],

        ),
      ),
    );

  }

}


class Perfil extends StatefulWidget {
  @override
  State<Perfil> createState() => _Perfil();
}

class _Perfil extends
State<Perfil>{
  bool isVisible = false;
  bool value = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child:Container(
                        child: BackButton(
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child:Container(
                        child: SizedBox(
                          width: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child:Container(
                        padding: EdgeInsets.all(1.0),
                        child: Image.asset('assets/transp.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    child: Image.asset('assets/login.png'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                child: Text(
                    'Erlich Bachman',
                    style: TextStyle(
                    fontSize: 40,
                  ),
                  ),
                ),
                Center(
                  child:Text(
                    'erlichbachman@piedpieper.com',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(

                  child: Container(
                    width: 200,
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text(
                      'Editar perfil',
                        style: TextStyle(
                            color: Colors.white,
                          ),
                    ),
                    color: Colors.black,
                  ),
                ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width:30,
                    ),
                    Text(
                      'Notificações'
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Center(
                      child: Container(
                        width: 370,
                        height: 70,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text('Ativar notificações',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Switch.adaptive(value: value, onChanged: (value) => setState(() => this.value=value),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width:30,
                    ),
                    Text(
                        'Link para convidar pessoas'
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 370,
                    height: 70,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Convidar pessoas',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                       ElevatedButton(
                         onPressed: () {},
                            style: ElevatedButton.styleFrom(
                             primary: Colors.white,
                            side: BorderSide(width: 4.0, color: Colors.black),
                            ),

                            child: Text(
                            'Invite',
                              style: TextStyle(
                                color: Colors.black
                              ),
                           ),
                       ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(width:4, color: Colors.black),
                      fixedSize: const Size(370,30),
                    ),
                    child: Text(
                      'Terminar sessão',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: (){},
                        iconSize: 50,
                        icon: Icon(Icons.house_rounded),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      onPressed: (){},
                      iconSize: 50,
                      icon: Icon(Icons.inbox),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      onPressed: (){},
                      iconSize: 50,
                      icon: Icon(Icons.lock_open),
                    ),
                  ],
                ),
              ],
              ),
            ],
          ),
        ),
      );

  }

}

