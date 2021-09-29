// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/colores.dart';
import 'package:special_counter/counter.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Consumer2<Colores, Counter>(
            builder: (context, colores, counter, child){
              return Container(
                height: MediaQuery.of(context).size.height * 0.70,
                margin: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: colores.actualColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(child: Text("${counter.count}", style: TextStyle(fontSize: 72, color: (flag==true)?Colors.white:Colors.black)))
              );
            }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  flag = true;
                  SnackBar mensaje = SnackBar(
                                          content: Text("Cambiando a color negro...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.black87,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(mensaje);
                  context.read<Colores>().changeBlack();
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  flag = true;
                  SnackBar mensaje = SnackBar(
                                          content: Text("Cambiando a color rojo...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.red,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(mensaje);
                  context.read<Colores>().changeRed();
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  flag = true;
                  SnackBar mensaje = SnackBar(
                                          content: Text("Cambiando a color azul...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.blue,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(mensaje);
                  context.read<Colores>().changeBlue();
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  flag = true;
                  SnackBar mensaje = SnackBar(
                                          content: Text("Cambiando a color verde...", 
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.green,
                                        );
                  ScaffoldMessenger.of(context).showSnackBar(mensaje);
                  context.read<Colores>().changeGreen();
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: (){
                    context.read<Counter>().increment();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Counter>().decrement();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<Counter>().restart();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
