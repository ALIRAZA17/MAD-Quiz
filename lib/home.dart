import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String email = args['email'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Mr. John Smith',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('9933775566'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(email),
          ),
          const ListTile(
            leading: Icon(Icons.fingerprint),
            title: Text('Biometric'),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('fort suit - 30 united state'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle top tab navigation
              },
              child: const Text('Top Tab Navigation'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle bottom tab navigation
              },
              child: Text('Bottom Tab Navigation'),
            ),
          ),
        ],
      ),
    );
  }
}
