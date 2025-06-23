import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiagnoseView extends StatelessWidget {
  const DiagnoseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('DiagnoseView'));
  }
}

@RoutePage()
class MyGardenView extends StatelessWidget {
  const MyGardenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('MyGardenView'));
  }
}

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ProfileView'));
  }
}
