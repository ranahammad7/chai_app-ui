import 'package:chai_app/util/chai_tile.dart';
import 'package:flutter/material.dart';

class ChaiTab extends StatelessWidget {

  //list of chai
  List chaiOnSale =[
    //[name , price, color, image]
    ["Alaichi Chai", "50", Colors.blue, "assets/icons/chai.png"],
    ["Choclate Chai", "50", Colors.green, "assets/icons/juice.png"],
    ["Long Chai", "50", Colors.pink, "assets/icons/cheers.png"],
    ["Doodh Pati Chai", "50", Colors.purple, "assets/icons/coffee.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: chaiOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5
        ),
       itemBuilder: (context, index){
        return ChaiTile(

          chainame: chaiOnSale[index][0],
          chaiprice: chaiOnSale[index][1],
          chaicolor: chaiOnSale[index][2],
          chaiimage: chaiOnSale[index][3],
           );
       },
    );
  }
}