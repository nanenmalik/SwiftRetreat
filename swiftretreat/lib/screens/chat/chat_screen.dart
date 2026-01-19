import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import '../../services/chat_service.dart';
import '../../theme/app_theme.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatService _chatService = ChatService();
  bool _isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Assistant'),
        backgroundColor: AppTheme.mocha,
        foregroundColor: Colors.white,
      ),
      body: DashChat(
        currentUser: _chatService.currentUser,
        onSend: (ChatMessage message) {
          setState(() {
            _isTyping = true;
          });

          _chatService
              .sendMessage(message)
              .then((_) {
                if (mounted) {
                  setState(() {
                    _isTyping = false;
                  });
                }
              })
              .catchError((error) {
                if (mounted) {
                  setState(() {
                    _isTyping = false;
                  });
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Error: $error')));
                }
              });
        },
        messages: _chatService.messages,
        typingUsers: _isTyping ? [_chatService.geminiUser] : [],
        inputOptions: const InputOptions(
          alwaysShowSend: true,
          cursorStyle: CursorStyle(color: AppTheme.mocha),
        ),
        messageOptions: const MessageOptions(
          currentUserContainerColor: AppTheme.mocha,
          currentUserTextColor: Colors.white,
          containerColor: AppTheme.cream,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
