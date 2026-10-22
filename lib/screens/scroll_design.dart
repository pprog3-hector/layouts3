import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
   
  const ScrollDesign({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [
              Color(0xff74e9cc),
              Color(0xff50c2dd)
            ]
          )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const _PageOne(),
            //test
            const _PageTwo()
          ],
        ),
      ) 
    );
  }
}

class _PageTwo extends StatelessWidget {
  const _PageTwo();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50c2dd),
      child: Center(
        child: FilledButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            foregroundColor: WidgetStatePropertyAll(Colors.black)
          ),
          onPressed: (){}, 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text('Soy un boton', style: TextStyle(fontSize: 20),),
          )
        )
      ),
    );
  }
}

class _PageOne extends StatelessWidget {
  const _PageOne();

  @override
  Widget build(BuildContext context) {

    final estilo = const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);

    return Stack(
      children: [
        Container(
          color: const Color(0xff50c2dd),
          height: double.infinity,
          alignment: Alignment.topCenter,
          child: const Image(
            image: AssetImage('assets/scroll-1.png'),
          ),
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Text('25°C', style: estilo ),
              Text('Lunes', style: estilo),
              Expanded(child: Container()),
              const Icon(Icons.keyboard_arrow_down_rounded, size: 50)
            ],
          ),
        )
      ],
    );
  }
}