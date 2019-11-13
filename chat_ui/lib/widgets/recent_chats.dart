import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0))),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: 100.0,
                decoration: chats[index].unread
                    ? BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        color: Color.fromRGBO(200, 0, 0, 0.08),
                      )
                    : null,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(chats[index].sender.imageUrl),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
