import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GramediaTab extends StatelessWidget {
  Widget content;
  GramediaTab({required this.content});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: content,
    );
  }
}
