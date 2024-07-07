import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/message_inbox.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  MessageState createState() => MessageState();
}

const messages = [
  {
    "username": "JohnDoe",
    "icon": "assets/logos/card.jpg",
    "message": "Hey there! How are you?"
  },
  {
    "username": "JaneSmith",
    "icon": "assets/logos/card1.jpeg",
    "message": "I'm good, thanks! What about you?"
  },
  {
    "username": "Admin",
    "icon": "assets/logos/card2.jpg",
    "message": "Please follow the chat rules."
  },
  {
    "username": "AliceWonder",
    "icon": "assets/logos/card.jpg",
    "message": "Does anyone know when the next meeting is?"
  },
  {
    "username": "BobBuilder",
    "icon": "assets/logos/card.jpg",
    "message": "I think it's scheduled for next Monday."
  },
  {
    "username": "JohnDoe",
    "icon": "assets/logos/card.jpg",
    "message": "Hey there! How are you?"
  },
  {
    "username": "JaneSmith",
    "icon": "assets/logos/card1.jpeg",
    "message": "I'm good, thanks! What about you?"
  },
  {
    "username": "Admin",
    "icon": "assets/logos/card2.jpg",
    "message": "Please follow the chat rules."
  },
  {
    "username": "AliceWonder",
    "icon": "assets/logos/card.jpg",
    "message": "Does anyone know when the next meeting is?"
  },
  {
    "username": "BobBuilder",
    "icon": "assets/logos/card.jpg",
    "message": "I think it's scheduled for next Monday."
  }
];

class MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        iconTheme: IconThemeData(
          color: isDark
              ? Colors.white
              : Colors.black, // Adjust the color based on the theme mode
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
              child: Text(
                "Messages",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: KSizes.defaultSpace,
                  vertical: KSizes.defaultSpace,
                ),
                child: Column(
                  children: [
                    Wrap(
                      children: messages
                          .map(
                            (item) => MessageBox(
                              userName: item["username"]!,
                              userIcon: item["icon"]!,
                              message: item["message"]!,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
