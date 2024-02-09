// CREDIT: Firebase guide

import 'dart:async';

import 'package:flutter/material.dart';
import 'src/widgets.dart';
import 'db_object.dart';

class TitleObjectDb extends StatefulWidget {
  const TitleObjectDb({
    super.key,
    required this.addMessage,
    required this.messages,
  });

  final FutureOr<void> Function(String message) addMessage;
  final List<TitleMessage> messages;

  @override
  State<TitleObjectDb> createState() => _TitleObjectDbState();
}

class _TitleObjectDbState extends State<TitleObjectDb> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_TitleObjectDbState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        for (var message in widget.messages)
          Paragraph('${message.name}: ${message.message}'),
        const SizedBox(height: 8),
      ],
    );
  }
}
