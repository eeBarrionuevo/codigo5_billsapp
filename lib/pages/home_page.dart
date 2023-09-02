import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Boton de agregar
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Expanded(child: SizedBox()),
              InkWell(
                onTap: () {
                  print("Hola");
                },
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  color: Color(0xff101321),
                ),
              ),
            ],
          ),

          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
            ],
          ),

          //Sección de listado general
        ],
      ),
    );
  }
}
