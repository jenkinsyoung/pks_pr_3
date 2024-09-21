import 'package:flutter/material.dart';
import 'package:pr_3/models/item.dart';
import 'package:pr_3/pages/info_page.dart';

class ItemUi extends StatelessWidget {
  const ItemUi({super.key, required this.index, required this.bodyColor, required this.textColor});
  final int index;
  final Color bodyColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        top: 8.0,
        bottom: 7.0,
      ),

      child: Container(
          height: 366,
          width: 309,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(2, 4),
              ),
            ],
          ),

             child: Stack(
               alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                   ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero
                  ),
                  child: Image(
                    image: NetworkImage(
                        games[index].image
                    ),
                  ),
                ),

        
              Positioned.fill(
                top: 195.26,
                  child: Container(
                    height: 180.74,
                    decoration: BoxDecoration(
                      color: bodyColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11.0),
                          child: Text(games[index].title, style: TextStyle(
                            fontSize: 20,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                        ),
                        Container(
                            width: 300,
                            height: 0,
                          decoration:
                          BoxDecoration(
                            border: Border(top: BorderSide(width: 1.0,
                              color: textColor,)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0
                          ),
                          child: Text(games[index].description ,style: TextStyle(
                              fontSize: 12,
                              color: textColor,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${games[index].age}+', style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500,
                              ),
                              ),
                              TextButton(onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => InfoPage(index: index),
                                  ),
                                );
                              }, child: Text('Подробнее >>',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: textColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  )
              ),
            ],
          ),
        ),
    );
  }
}
