import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> coffeeTitle = [
      "Espresso",
      "Cappuccino",
      "Mocha",
      "Latte",
      "Macchiato"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MENU",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.brown[50],
        toolbarHeight: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.brown,
              size: 20,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      ]),
      body: content(coffeeTitle),
    );
  }

  Widget content(List<String> coffeeTitle) {
    return Column(
      children: [
        // SizedBox(
        //   height: 10,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text.rich(
            TextSpan(
                text: "It's Great ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown[900],
                ),
                children: [
                  TextSpan(
                    text: "Day for Coffee.",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
            itemCount: coffeeTitle.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset('assets/coffee_cup.png'),
                  title: Text(
                    coffeeTitle[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: (() => Navigator.of(context).pushNamed('/details')),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              );
            }))
      ],
    );
  }
}
