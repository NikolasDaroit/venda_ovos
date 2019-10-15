import 'package:flutter/material.dart';
import 'package:venda_ovos/model/clienteModel.dart';

class ClientePage extends StatelessWidget {
  final Cliente cliente;
  ClientePage({Key key, this.cliente}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(1, 89, 99, 1.0), Colors.grey],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text("Nome : ${cliente.nome}",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Endereço : ${cliente.endereco}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Telefone : ${cliente.telefone}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Branco 1 : ${cliente.branco1}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Vermelho 1 : ${cliente.vermelho1}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Embalado Branco : ${cliente.embaladoBranco}",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: TextFormField(
                        style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0),
                          decoration:
                              InputDecoration(labelText: 'Embalado Vermelho'),
                          initialValue: "${cliente.embaladoVermelho}"))
                ],
              ),
            ),
            //here
          ),
        ],
      ),
    );
  }
}
