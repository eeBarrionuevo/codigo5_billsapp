import 'package:codigo5_billsapp/widgets/item_bill_widget.dart';
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34),
                    ),
                  ),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Resumen de gastos",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Gestiona tus gastos de la mejor forma",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                            ItemBillWidget(),
                          ],
                        ),
                      ),
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
