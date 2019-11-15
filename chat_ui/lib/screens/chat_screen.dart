import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget _buildMessage(Message message, bool isMe) {
    final Row msg_other = Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          padding: EdgeInsets.only(left: 20.0),
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              )),
          child: Padding(
            padding: EdgeInsets.only(
                left: 7.0, top: 15.0, bottom: 15.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.time,
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  message.text,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            message.isLiked ? Icons.favorite : Icons.favorite_border,
            color: message.isLiked
                ? Theme.of(context).primaryColor
                : Colors.blueGrey,
          ),
        )
      ],
    );

    final msg_mine = Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0),
      decoration: BoxDecoration(
          color: Color(0xFFFFEFEE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          )),
      child: Padding(
        padding:
            EdgeInsets.only(left: 7.0, top: 15.0, bottom: 15.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.time,
              style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.w700,
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              message.text,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
    return isMe ? msg_mine : msg_other;
  }

  Widget _buildMessageComposer() {
    return Container(
      height: 70.0,
      color: Colors.white,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 40.0,
          margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).accentColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.photo,
                  color: Colors.blueGrey,
                ),
                iconSize: 28.0,
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {},
                  decoration:
                      InputDecoration.collapsed(hintText: 'Send a message...'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.blueGrey,
                ),
                iconSize: 28.0,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0, //Get rid of elevation of app bar
        title: Text(widget.user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext text, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
