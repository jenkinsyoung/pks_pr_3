import 'package:flutter/material.dart';
import 'package:pr_3/components/item_list.dart';
import 'package:pr_3/models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(
        child: Text('Настольные игры', style: TextStyle(
          color: Color.fromRGBO(76, 23, 0, 1.0),
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        ),
      ),
        backgroundColor: const Color.fromRGBO(235, 234, 248, 1.0),
      ),

      body: Container(
        color: const Color.fromRGBO(235, 234, 248, 1.0),
        child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: games.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemList(ind: index);
            }
        ),
      ),
    );
  }
}
