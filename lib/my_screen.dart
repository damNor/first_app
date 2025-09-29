import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My First App"), backgroundColor: Colors.deepOrange, foregroundColor: Colors.white,),
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(12),
          decoration:  BoxDecoration(
            // color: Colors.blueAccent,
            border:  Border.all(
              color: Colors.transparent,
              width: 3
            ),
            // border: Border.all(width: 8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3)
                    
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple,Colors.pink]
            ),
            color:  Colors.blueAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                            icon: Column(
                              children: [
                                  Icon(Icons.person_2_outlined),
                                  Text("Profile",style: TextStyle(color: Colors.white,
                                                                  fontSize:15,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontFamily: 'Roboto'
                                                              )
                                      ),
                                  ]
                            ),
                            iconSize: 30.0,
                            color: Colors.white,
                            onPressed: (){
                              Navigator.push(context,
                                        MaterialPageRoute<void>(
                                              builder: (context) => const ProfileRoute())
                              );
                              print('Profile Button Pressed');
                            },
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    // icon: Icon(Icons.currency_exchange),
                    icon: Column(
                        children: [
                          Icon(Icons.currency_exchange),
                          Text("Transaction",style: TextStyle(color: Colors.white,
                              fontSize:15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                          )
                          ),
                        ]
                    ),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute<void>(
                              builder: (context) => const TransactionRoute())
                      );
                      print('Profile Button Pressed');
                    },
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    // icon: Icon(Icons.warehouse),
                    icon: Column(
                        children: [
                          Icon(Icons.warehouse),
                          Text("Inventory",style: TextStyle(color: Colors.white,
                              fontSize:15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'
                          )
                          ),
                        ]
                    ),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute<void>(
                              builder: (context) => const InventoryRoute())
                      );
                      print('Profile Button Pressed');
                    },
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}

class ProfileRoute extends StatelessWidget {
  const ProfileRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.lightBlue , foregroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text('Back')),
      ),
    );
  }
}

class TransactionRoute extends StatelessWidget {
  const TransactionRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction'),backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child : Text('Back')),
      ),
    );
  }
}

class InventoryRoute extends StatelessWidget {
  const InventoryRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventory'), backgroundColor: Colors.blueAccent, foregroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
            child: Text('Back')),
      ),
    );
  }
}

