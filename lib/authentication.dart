import 'package:firebase_flutter_project/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({
    required this.loggedIn,
    required this.signedOut,
    super.key,
  });

  final bool loggedIn;
  final void Function() signedOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StyledButton(
          onPressed: () {
            !loggedIn ? context.push('/sign-in') : signedOut();
          },
          child: !loggedIn ? const Text('RSVP') : const Text('LogOut'),
        ),
        Visibility(
          visible: loggedIn,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 8),
            child: StyledButton(
                child: const Text('Profile'),
                onPressed: () {
                  context.push('/profile');
                }),
          ),
        )
      ],
    );
  }
}
