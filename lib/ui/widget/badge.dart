import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotifBadge extends ConsumerWidget {
  const NotifBadge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const isNotifVisible = true;

    return const Badge(
      label: Text(
        '999+',
      ),
      isLabelVisible: isNotifVisible,
      child: Icon(Icons.chat_outlined),
    );
  }
}
