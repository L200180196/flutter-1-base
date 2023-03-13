import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Lat21 extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible Widget'),
        backgroundColor: Colors.green[400],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            confirmDismiss: (direction) {
              return showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirm"),
                    content: Text("Are you sure delete this chat ?"),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        }, 
                        child: Text("Yes")
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        }, 
                        child: Text("No")
                      ),
                    ],
                  );
                }
              );
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red[400],
              child: Icon(Icons.delete,size: 35,),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(10),
            ),
            child: ChatTime(
              imageUrl: "https://picsum.photos/id/$index/200/300", 
              title: faker.person.name(), 
              subtitle: faker.lorem.sentence()
            ),
          );
        },
      ),
    );
  }
}

class ChatTime extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  ChatTime({
    required this.imageUrl, required this.title, required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("10:00 PM"),
    );
  }
}