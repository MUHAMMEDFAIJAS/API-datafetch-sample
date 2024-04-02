import 'package:api_test_2/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<Apiprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('api callingg'),
      ),
      body: ListView.builder(
          itemCount: pro.users.length,
          itemBuilder: (context, index) {
            final user = pro.users[index];
            final email = user['email'];
            final image = user['picture']['thumbnail'];
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(image),
              ),
              title: Text(email),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pro.fetchusers();
        },
        child: const Text('fetch data'),
      ),
    );
  }
}
