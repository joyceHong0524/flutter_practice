import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread,});
}


//You - Current user
final User currentUser = User(
  id: 0,
  name: 'Joyce',
  imageUrl: 'assets/images/joyce.jpg',
);


//Users
final User sik = User(
  id: 1,
  name: 'Sik',
  imageUrl: 'assets/images/cs.jpg',
);
final User greg = User(
  id: 2,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 3,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);

final User john = User(
  id: 4,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);

final User olivia = User(
  id: 5,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);

final User sam = User(
  id: 6,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);

final User joyce = User(
  id: 7,
  name: 'Joyce',
  imageUrl: 'assets/images/joyce.jpg',
);


//Favorite Contacts
List<User> favorites = [sik, greg, john, sam, olivia,joyce];


//Example chats on home screen.
List<Message> chats = [
  Message(
    sender: sik,
    time: '5:30 PM',
    text: 'Hey, How\'s it going? Did you get his number?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Hey, How\'s it going? Did you get his number?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '2:30 PM',
    text: 'holy shit!!! can you bring me my homework on my desk?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '5:30 PM',
    text: 'I know it might sound weird..but',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joyce,
    time: '5:30 PM',
    text: 'Hey, How\'s it going? Did you get his number?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: olivia,
    time: '5:30 PM',
    text: 'Nope I didn\'t even think about it',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge.🔥🔥 She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?🔥🔥',
    isLiked: false,
    unread: true,
  ),
];

