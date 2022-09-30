import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/coffee_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        )],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',


          ),


        ],
      ),
      body:  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric  (horizontal: 25.0),
          child: Text('Find best Coffe For You ', style: GoogleFonts.bebasNeue(
            fontSize: 60,
          ),

          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),

          child: TextField(

             decoration: InputDecoration(
               prefixIcon: Icon(Icons.search ),
               hintText: ('Search Your Coffee'),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey.shade600),
               ),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey.shade600),
               ),

             ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal ,
              children: const [
                CoffeTile(),
                CoffeTile(),
                CoffeTile(),

              ],
            ))
      ],
      ),
    );
  }
}
