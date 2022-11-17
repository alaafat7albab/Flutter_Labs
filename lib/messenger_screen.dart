import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 5.0,
        title: Row(
          children: [
            IconButton(
              onPressed:(){},
              icon: CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 27.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20.0,
                ),
              )
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              )
          ),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[800],
                ),
                padding: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 5.0,
                  top: 5.0,
                  bottom: 5.0,
                ) ,
                child: Row(
                  children: [
                    Icon(
                        Icons.search,
                        color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 150.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStory() ,
                    separatorBuilder: (context, index) => SizedBox(width: 15.0),
                    itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChat() ,
                  separatorBuilder: (context, index) => SizedBox(height: 15.0,) ,
                  itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build Items
  Widget buildStory() => Container(
    width: 80.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/D5603AQG5PW-f53tR1Q/profile-displayphoto-shrink_200_200/0/1648202743406?e=2147483647&v=beta&t=kZ1rhX5k2Z6xAFEuBItD4R4pQsnEz3HNAJ2s88UKICU'),
            ),
            CircleAvatar(
              radius: 13.0,
              backgroundColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 5.0,
                end: 5.0,
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Alaa Fathalbab',
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ],
    ),
  );
  Widget buildChat()  => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/D5603AQG5PW-f53tR1Q/profile-displayphoto-shrink_200_200/0/1648202743406?e=2147483647&v=beta&t=kZ1rhX5k2Z6xAFEuBItD4R4pQsnEz3HNAJ2s88UKICU'),
          ),
          CircleAvatar(
            radius: 13.0,
            backgroundColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 5.0,
              end: 5.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alaa Fathalbab',
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello, my name is alaa fathalbab, how are you?!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '2:00 PM',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}


