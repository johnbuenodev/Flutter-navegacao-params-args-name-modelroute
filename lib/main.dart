import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: screenformPage(),
  ));
}

class screenformPage extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screenformPage> {
  String _result = "Screen 1";

  //void Screen1next(){
  TextEditingController nameControlle = TextEditingController();
  String namedatavar = "Não foi atribuido valor.";
  String datavar;
  String namevarParams;

  void saveData() {
    datavar = nameControlle.text;

    setState(() {
      namedatavar = "Add valor: ${datavar}";
      nameControlle.clear();
      datavar = "";
    });
  }

  void deleteData(){
    setState(() {
      namedatavar = "Não foi atribuido valor.";
      nameControlle.clear();
      datavar = "";
    });

  }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                namevarParams = namedatavar;
                deleteData();
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => screenform2Page(),
                        settings: RouteSettings(
                            name: "/Screen2", arguments: namevarParams)));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: (Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  _result,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Você pode informar algo para passar para próxima Pagina",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  controller: nameControlle,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Informe os dados:",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RaisedButton(
                  onPressed: () {
                    saveData();
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    "ADD",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  namedatavar,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              )
            ],
          ))),
        )));
  }
}

class screenform2Page extends StatefulWidget {
  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screenform2Page> {
  String _result2 = "Parâmetro route: Screen 2";

  //void Screen2next(){

  //}

  @override
  Widget build(BuildContext context) {
    final _titleargs2 = ModalRoute.of(context).settings.name;
    final args2 = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 2"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {

                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => screenform3Page(),
                        settings: RouteSettings(
                            name: "/Screen3", arguments: "Essa é a Pagina 3")));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: (Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  _titleargs2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  args2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              )
            ],
          ))),
        )));
  }
}

class screenform3Page extends StatefulWidget {
  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screenform3Page> {
  String _result3 = "Parâmetro route: Screen 3";

  //void Screen3next(){

  //}

  @override
  Widget build(BuildContext context) {
    final _titleargs3 = ModalRoute.of(context).settings.name;
    final args3 = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 3"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => screenform4Page(),
                      settings: RouteSettings(
                          name: "/Screen4",
                          arguments: "Essa é a Ultima Pagina")),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: (Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  _titleargs3,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  args3,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
            ],
          ))),
        )));
  }
}

class screenform4Page extends StatefulWidget {
  @override
  _screen4State createState() => _screen4State();
}

//adicionado ao pressed a função navigator
//que retorna para a primeira pagina
//matando todas as outras na pilha
//recomendado para pagamentos via cartão de credito
//ou outras situações que o usuario não precise voltar
//para dados anteriores.
class _screen4State extends State<screenform4Page> {
  //String _result4 = "Parâmetro route: Screen 4";

  //void Screen4next(){

  //}
  String _titleargs4;

  @override
  Widget build(BuildContext context) {
    _titleargs4 = ModalRoute.of(context).settings.name;
    final args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 4"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                //popUntilEscolhe uma pagina da pilha e fecha todas entre a rota atual e a rota escolhida
                Navigator.popUntil(context, ModalRoute.withName("/"));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: (Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  _titleargs4,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  args,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                ),
              ),
            ],
          ))),
        )));
  }
}
