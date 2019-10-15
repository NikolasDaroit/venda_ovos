import 'package:flutter/material.dart';
import 'package:venda_ovos/cliente.dart';
import 'package:venda_ovos/model/clienteModel.dart';
import 'package:venda_ovos/model/diaModel.dart';

class DiaPage extends StatelessWidget {
  final Dia dia;
  DiaPage({Key key, this.dia}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final infoDia = Text(
      dia.nome,
      style: TextStyle(fontSize: 18.0),
    );

    final novoClienteButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {},
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("Adicionar Novo Cliente",
              style: TextStyle(color: Colors.white)),
        ));

    ListTile makeListTile(Cliente cliente) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            cliente.nome,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ClientePage(cliente: cliente)));
          },
        );

    Card makeCard(Cliente cliente) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(cliente),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: this.dia.clientes.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(this.dia.clientes[index]);
        },
      ),
    );
    final detalheDia = Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[infoDia, novoClienteButton, makeBody],
        ),
      ),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[detalheDia],
      ),
    );
  }
}
