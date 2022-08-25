import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  final TextEditingController textController;

  const PostBody({Key? key, required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField(
          controller: textController,
          decoration: const InputDecoration(
              hintText: "What is in your Mind!",
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
          maxLines: 10,
        ),
      ],
    );
  }
}
