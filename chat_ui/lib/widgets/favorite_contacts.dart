import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favorite contacts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left : 13.0),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: favorites[index],
                    )
                  )),
                                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, // 여기서 container의 어디에 위치가 결정됨. alingment는 아님 !!!!!
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
