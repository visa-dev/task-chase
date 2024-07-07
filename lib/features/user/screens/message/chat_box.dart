import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class ClientChat extends StatefulWidget {
  const ClientChat({super.key});

  @override
  ClientChatState createState() => ClientChatState();
}

class ClientChatState extends State<ClientChat> {
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
          children: [
            Center(
              child: RoundedContainer(
                imageUrl: KImages.cardImg2,
                borderRadius: 100,
                applyImageRadius: true,
                fit: BoxFit.cover,
                width: KHelperFunctions.screenWidth(context) / 5,
                height: KHelperFunctions.screenWidth(context) / 5,
              ),
            ),
            const SizedBox(
              height: KSizes.sm,
            ),
            Text(
              "San Json",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: KSizes.defaultSpace),
              child: Column(
                children: [
                  BubbleSpecialThree(
                    text: 'Added iMessage shape bubbles',
                    color: Color.fromARGB(255, 234, 182, 137),
                    tail: true,
                    isSender: false,
                  textStyle: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: KSizes.sm,
                  ),
                  BubbleSpecialThree(
                    text: 'Please try and give some feedback on it!',
                    color: Color.fromARGB(255, 183, 183, 184),
                    tail: true,
                    textStyle: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: MessageBar(
        sendButtonColor: Colors.grey,
        messageBarHintText: "Type Somthi",
        onSend: (_) =>{},
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              child: const Icon(
                Icons.attach_file_outlined,
                color: Colors.black,
                size: 24,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
