import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
   
  const BasicDesign({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: NetworkImage('https://img.magnific.com/free-photo/lavender-field-sunset-near-valensole_268835-3910.jpg'),
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover
            ),
            const _Title(),
            const _Buttons(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: const Text('Non dolor sunt eiusmod voluptate aliquip sit ad consectetur mollit adipisicing. Proident esse sit elit voluptate et. Esse exercitation non officia elit enim tempor amet incididunt do laboris sunt ea. Do laboris proident minim ex. Lorem voluptate tempor cupidatat consectetur sint velit minim nisi cupidatat sit. Minim occaecat laborum nostrud ad aliqua et magna duis dolor commodo. Irure in amet qui eu quis labore do in aliqua amet fugiat enim amet occaecat.'),
            )
            
          ],
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _BasicButton(
            icon: Icons.phone_rounded,
            value: 'CALL'
          ),
          _BasicButton(
            icon: Icons.map_rounded,
            value: 'MAP'
          ),
          _BasicButton(
            icon: Icons.share_rounded,
            value: 'SHARE'
          ),
        ],
      ),
    );
  }
}

class _BasicButton extends StatelessWidget {

  final IconData icon;
  final String value;

  const _BasicButton({
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Has tocado a $value');
      },
      child: Column(
        children: [
          Icon(icon, color: Colors.indigo, size: 30,),
          const SizedBox(height: 5,),
          Text(value, style: const TextStyle(color: Colors.indigo),)
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text('Kandersteg, Switzerland')
            ],
          ),
          Row(
            children: [
              Icon(Icons.star_rounded, color: Colors.deepOrange,),
              SizedBox(width: 3,),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}