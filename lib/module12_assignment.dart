import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Module12_Assignment extends StatefulWidget {
  const Module12_Assignment({super.key});

  @override
  State<Module12_Assignment> createState() => _Module12_AssignmentState();
}

class _Module12_AssignmentState extends State<Module12_Assignment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: const Text('Demo App'),
        actions: const [
          Padding(padding: EdgeInsets.all(16),
            child: Text('Item 1'),
          ),
          Padding(padding: EdgeInsets.all(16),
            child: Text('Item 2'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Skill Up Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.monitor),
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mode_comment),
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 96, 24, 24 ),
          child: Column(
            children: <Widget>[
              const Text(
                'Flutter Web.', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold,),
              ),
              const Text('The Basics', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold,),),
              const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,'),
             const SizedBox(height: 24,),
              Padding(
               padding: const EdgeInsets.all(24),
               child: ElevatedButton(
                 onPressed: () {  },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8), // Adjust the radius to your preference
                   ),
                 ),
                 child: const Text('Join Course'),

               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}


