import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_app/ViewModels/Bloc/ChatCubit/chat_cubit.dart';
import 'package:social_app/Widgets/ChatDetailsScreen/send_action.dart';

import '../../Models/UserModel/user_model.dart';

class ShowImageSelected extends StatelessWidget {
  final File selectedImage;
  final UserModel receiver;
  final TextEditingController messageController;

  const ShowImageSelected(
      {Key? key,
      required this.selectedImage,
      required this.receiver,
      required this.messageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        messageController.text = "";
        ChatCubit.get(context).chatImage = null;
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Image(image: FileImage(selectedImage)),
              ),
            ),
            SendAction(receiver, true, messageController),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
