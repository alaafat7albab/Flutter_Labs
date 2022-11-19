import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  final String id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
});

}

class ContactsScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 'A', name: 'Alaa Fathalbab', phone: '+20 100 000000000'),
    UserModel(id: 'S', name: 'Salsabil Fathalbab', phone: '+20 100 00000000'),
    UserModel(id: 'A', name: 'Abdo Fathalbab', phone: '+20 100 3333333'),
    UserModel(id: 'A', name: 'Alaa Yassen', phone: '+20 100 22222222'),
    UserModel(id: 'A', name: 'Alaa Fathalbab', phone: '+20 100 000000000'),
    UserModel(id: 'S', name: 'Salsabil Fathalbab', phone: '+20 100 00000000'),
    UserModel(id: 'A', name: 'Abdo Fathalbab', phone: '+20 100 3333333'),
    UserModel(id: 'A', name: 'Alaa Yassen', phone: '+20 100 22222222'),
    UserModel(id: 'A', name: 'Alaa Fathalbab', phone: '+20 100 000000000'),
    UserModel(id: 'S', name: 'Salsabil Fathalbab', phone: '+20 100 00000000'),
    UserModel(id: 'A', name: 'Abdo Fathalbab', phone: '+20 100 3333333'),
    UserModel(id: 'A', name: 'Alaa Yassen', phone: '+20 100 22222222'),
    UserModel(id: 'A', name: 'Alaa Fathalbab', phone: '+20 100 000000000'),
    UserModel(id: 'S', name: 'Salsabil Fathalbab', phone: '+20 100 00000000'),
    UserModel(id: 'A', name: 'Abdo Fathalbab', phone: '+20 100 3333333'),
    UserModel(id: 'A', name: 'Alaa Yassen', phone: '+20 100 22222222'),
    UserModel(id: 'A', name: 'Alaa Fathalbab', phone: '+20 100 000000000'),
    UserModel(id: 'S', name: 'Salsabil Fathalbab', phone: '+20 100 00000000'),
    UserModel(id: 'A', name: 'Abdo Fathalbab', phone: '+20 100 3333333'),
    UserModel(id: 'A', name: 'Alaa Yassen', phone: '+20 100 22222222'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Phone',
            style: TextStyle(
              fontSize: 25.0
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                print('add');
              },
              icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: (){
              print('search');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){
              print('more');
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildContactsItems(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 95.0,
              top: 8.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[800],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildContactsItems (UserModel userModel) => Padding(
    padding: const EdgeInsetsDirectional.only(
      start: 25.0,
      top: 10.0,
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 25.0,
          child: Text(
            '${userModel.id}',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${userModel.name}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0
              ) ,
            ),
            Text(
              '${userModel.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
