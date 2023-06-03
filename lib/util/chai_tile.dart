import 'package:flutter/material.dart';

class ChaiTile extends StatelessWidget {
  final String chainame;
  final String chaiprice;
  final chaicolor;
  final String chaiimage;

  final double boederRadius = 12;

  const ChaiTile({
    super.key,
    required this.chainame,
    required this.chaiprice,
    required this.chaicolor,
    required this.chaiimage,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: chaicolor[50],
          borderRadius: BorderRadius.circular(boederRadius)
        ),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: chaicolor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(boederRadius),
                      topRight: Radius.circular(boederRadius), 
                    )
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$' + chaiprice,
                    style: TextStyle(
                      color: chaicolor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 12,
              ),
              child: Image.asset(chaiimage),
            ),

            Text(
              chainame,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4,),
            Text(
              'Chai',
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Icon(
                Icons.favorite,
                color: Colors.pink[400],
              ),
              Icon(
                Icons.add,
                color: Colors.grey[800],
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}