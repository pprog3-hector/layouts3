import 'dart:ui';

import 'package:flutter/material.dart';

class GridDesignScreen extends StatelessWidget {
   
  const GridDesignScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Fondo(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pantalla de GridView', style: TextStyle(
                          color: Colors.white, 
                          fontSize: 24, 
                          fontWeight: FontWeight.bold),
                        ),
                        Text('En esta pantalla se muestra cómo usar el GridView (Cuadrículas).', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    ),
                  ),
                  Table(
                    children: [
                      const TableRow(
                        children: [
                          _TarjetaCustom(
                            nombre: 'Telefono',
                            icon: Icons.phone_rounded,
                            color: Colors.greenAccent,
                          ),
                          _TarjetaCustom(
                            nombre: 'Compras',
                            icon: Icons.shopping_cart_rounded,
                            color: Colors.blueAccent,
                          ),
                        ]
                      ),
                      const TableRow(
                        children: [
                          _TarjetaCustom(
                            nombre: 'Camara',
                            icon: Icons.camera_alt_rounded,
                            color: Colors.redAccent,
                          ),
                          _TarjetaCustom(
                            nombre: 'Fotos',
                            icon: Icons.photo,
                            color: Colors.pink,
                          ),
                        ]
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class _TarjetaCustom extends StatelessWidget {

  final String nombre;
  final IconData icon;
  final Color color;

  const _TarjetaCustom({
    required this.nombre, 
    required this.icon, 
    required this.color, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 160,
      width: 80,
      margin: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/basic');
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black26,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child: Icon(icon, size: 30, color: Colors.black,),
                  ),
                  const SizedBox(height: 5,),
                  Text(nombre, style: const TextStyle(color: Colors.white, fontSize: 16),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Fondo extends StatelessWidget {
  const _Fondo();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 35, 32, 37),
        ),
        Positioned(
          top: -100,
          left: -40,
          child: Transform.rotate(
            angle: 45,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple[300]!,
                    Colors.purple
                  ]
                )
              ),
            ),
          )
        )
      ],
    );
  }
}