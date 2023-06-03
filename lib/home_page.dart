import 'package:chai_app/Tabs/cheers_tab.dart';
import 'package:chai_app/util/my_tabs.dart';
import 'package:flutter/material.dart';

import 'Tabs/chai_tab.dart';
import 'Tabs/coffee_tab.dart';
import 'Tabs/juice_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [ 
    MyTab(
      //chai
      iconPath: 'assets/icons/chai.png',
    ),

     MyTab(
      //juice
      iconPath: 'assets/icons/juice.png',
    ),

     MyTab(
      //coffee
      iconPath: 'assets/icons/coffee.png',
    ),
     MyTab(
      //cheers
      iconPath: 'assets/icons/cheers.png',
    ),
     MyTab(
      //chai
      iconPath: 'assets/icons/chai.png',
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.grey[800],
                      size: 36,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.grey[800],
                      size: 36,
                    )
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(
                    children: const [ 
                      Text(
                        "I want to take",
                        style: TextStyle( fontSize: 16),),
                        Text(
                  " CHAI",
                  style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
    
                const SizedBox(height: 24,),
    
                //tab bar
                TabBar(tabs: myTabs),
    
                //tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      //chai_page
                      ChaiTab(),

                      //juice
                      JuiceTab(),

                      //Coffee
                      CoffeeTab(),

                      //Cheers_page
                      CheersTab(),
                    ],)
                ),
    
    
    
    
            ],
          ),
        ),
      ),
    );
  }
}